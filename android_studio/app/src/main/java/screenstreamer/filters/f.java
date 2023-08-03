package screenstreamer.filters;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import java.nio.IntBuffer;

/* compiled from: OpenGlUtils.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final int f93380a = -1;

    public static int a(String str, String str2) {
        int[] iArr = new int[1];
        int b10 = b(str, 35633);
        if (b10 == 0) {
            Log.d("Load Program", "Vertex Shader Failed");
            return 0;
        }
        int b11 = b(str2, 35632);
        if (b11 == 0) {
            Log.d("Load Program", "Fragment Shader Failed");
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(glCreateProgram, b10);
        GLES20.glAttachShader(glCreateProgram, b11);
        GLES20.glLinkProgram(glCreateProgram);
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] <= 0) {
            Log.d("Load Program", "Linking Failed");
            return 0;
        }
        GLES20.glDeleteShader(b10);
        GLES20.glDeleteShader(b11);
        return glCreateProgram;
    }

    public static int b(String str, int i4) {
        int[] iArr = new int[1];
        int glCreateShader = GLES20.glCreateShader(i4);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] == 0) {
            Log.d("Load Shader Failed", "Compilation\n" + GLES20.glGetShaderInfoLog(glCreateShader));
            return 0;
        }
        return glCreateShader;
    }

    public static int c(Bitmap bitmap, int i4) {
        return d(bitmap, i4, true);
    }

    public static int d(Bitmap bitmap, int i4, boolean z9) {
        int[] iArr = new int[1];
        if (i4 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            GLES20.glBindTexture(3553, i4);
            GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            iArr[0] = i4;
        }
        if (z9) {
            bitmap.recycle();
        }
        return iArr[0];
    }

    public static int e(IntBuffer intBuffer, Camera.Size size, int i4) {
        int[] iArr = new int[1];
        if (i4 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, 6408, size.width, size.height, 0, 6408, 5121, intBuffer);
        } else {
            GLES20.glBindTexture(3553, i4);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, size.width, size.height, 6408, 5121, intBuffer);
            iArr[0] = i4;
        }
        return iArr[0];
    }

    public static int f(IntBuffer intBuffer, Camera.Size size, int i4) {
        return c(Bitmap.createBitmap(intBuffer.array(), size.width, size.height, Bitmap.Config.ARGB_8888), i4);
    }

    public static float g(float f10, float f11) {
        return f10 + ((f11 - f10) * ((float) Math.random()));
    }
}
