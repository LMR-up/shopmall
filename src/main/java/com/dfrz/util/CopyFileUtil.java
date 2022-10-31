package com.dfrz.util;

import java.io.*;

public class CopyFileUtil {
    public static void copy(InputStream in, OutputStream out) {

        in = new BufferedInputStream(in);
        out = new BufferedOutputStream(out);

//拷贝字节流的数据
        byte[] buf = new byte[1024];
        int length = 0;
        try {
            while ((length = in.read(buf)) != -1) {
                out.write(buf, 0, length);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            out.close();
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
