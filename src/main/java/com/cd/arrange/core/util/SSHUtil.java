package com.cd.arrange.core.util;
import java.io.*;
import java.util.Properties;
import java.util.Vector;

import com.jcraft.jsch.Channel;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.ChannelExec;
import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
/**
 * Created by cd on 2017/3/24.
 */
public class SSHUtil {
    private Session session;
    private Channel channel;
    private String ipAddress;

    private String username;

    private String password;
    private int port;

    public static final int DEFAULT_SSH_PORT = 22;

    private Vector<String> stdout;

    public SSHUtil(final String ipAddress, final String username, final String password,final int port) {
        this.ipAddress = ipAddress;
        this.username = username;
        this.password = password;
        this.port=port;
        stdout = new Vector<String>();
    }
    public void connect() {
        try {
            JSch jsch = new JSch();
            if(port<=0){
                session = jsch.getSession(username, ipAddress);
            }else {
                session = jsch.getSession(username, ipAddress, port);
            }
            //如果服务器连接不上，则抛出异常
            if (session == null) {
                throw new Exception("session is null");
            }
            //设置登陆主机的密码
            session.setPassword(password);//设置密码
            //设置第一次登陆的时候提示，可选值：(ask | yes | no)
            Properties config = new Properties();
            config.put("StrictHostKeyChecking", "no");
            session.setConfig(config);
            //设置登陆超时时间
            session.connect(30000);
        }catch(Exception e){

        }
    }
    public void disconnect(){
        session.disconnect();
        channel.disconnect();
    }

    /**
     *
     * @param localPath
     * @param serverPath
     * @param category 0上传，1下载
     */
    public void fileTransfer(String localPath,String serverPath,int category){
        this.connect();
        try {
            //创建sftp通信通道
            channel = (Channel) session.openChannel("sftp");
            channel.connect(3000);
            ChannelSftp sftp = (ChannelSftp) channel;


            //进入服务器指定的文件夹
            sftp.cd("/home/ubuntu");

            //列出服务器指定的文件列表
            Vector v = sftp.ls("*.txt");
            for(int i=0;i<v.size();i++){
                System.out.println(v.get(i));
            }
            OutputStream outstream=null;
            InputStream instream=null;
            //以下代码实现从本地上传一个文件到服务器，如果要实现下载，对换以下流就可以了
            if(category==1) {
                outstream = new FileOutputStream(new File(localPath));
                instream = sftp.get(serverPath);
            }
            if(category==0){
                outstream = sftp.put(serverPath);
                instream = new FileInputStream(new File(localPath));
            }
            byte b[] = new byte[1024];
            int n;
            while ((n = instream.read(b)) != -1) {
                outstream.write(b, 0, n);
            }

            outstream.flush();
            outstream.close();
            instream.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.disconnect();
        }
    }

    public int execute(final String command) {
        int returnCode = 0;
        JSch jsch = new JSch();

        try {
            // Create and connect session.
            Session session = jsch.getSession(username, ipAddress, DEFAULT_SSH_PORT);
            session.setPassword(password);
            Properties config = new Properties();
            config.put("StrictHostKeyChecking", "no");
            session.setConfig(config);
            session.connect();

            // Create and connect channel.
            Channel channel = session.openChannel("exec");
            ((ChannelExec) channel).setCommand(command);

            channel.setInputStream(null);
            BufferedReader input = new BufferedReader(new InputStreamReader(channel
                    .getInputStream()));

            channel.connect();
            System.out.println("The remote command is: " + command);

            // Get the output of remote command.
            String line;
            while ((line = input.readLine()) != null) {
                stdout.add(line);
            }
            input.close();

            // Get the return code only after the channel is closed.
            if (channel.isClosed()) {
                returnCode = channel.getExitStatus();
            }

            // Disconnect the channel and session.
            channel.disconnect();
            session.disconnect();
        } catch (JSchException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return returnCode;
    }

    public Vector<String> getStandardOutput() {
        return stdout;
    }

    public static void main(final String [] args) {
        SSHUtil sshExecutor = new SSHUtil("192.168.189.136", "ubuntu", "123456",-1);
//        try {
////            sshExecutor.fileDwonload("d:/a.sh","/home/ubuntu/test/publish.sh");
//            sshExecutor.fileTransfer("C:\\Users\\cd\\Desktop\\nmxwyq.distributor-1.1.0-20170405.061955-34.war","/opt/apache-tomcat-8.0.41/webapps/nmxwyq.distributor-1.1.0-20170405.061955-34.war",0);
//        }
//        catch(Exception e) {
//
//        }
        sshExecutor.execute("cd /opt/apache-tomcat-8.0.41/bin;./startup.sh");

        Vector<String> stdout = sshExecutor.getStandardOutput();
        for (String str : stdout) {
            System.out.println(str);
        }
    }
}
