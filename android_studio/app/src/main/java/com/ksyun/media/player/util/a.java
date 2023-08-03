package com.ksyun.media.player.util;

import android.opengl.GLES20;

/* compiled from: GLUtil.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45593a = "GLUtil";

    public static int a(int i4) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        a("CreateTexture");
        GLES20.glBindTexture(i4, iArr[0]);
        a("BindTexture");
        GLES20.glTexParameterf(i4, 10241, 9728.0f);
        GLES20.glTexParameterf(i4, 10240, 9729.0f);
        GLES20.glTexParameteri(i4, 10242, 33071);
        GLES20.glTexParameteri(i4, 10243, 33071);
        a("SetTexParameter");
        return iArr[0];
    }

    public static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        throw new RuntimeException(str + ": Error 0x" + Integer.toHexString(glGetError));
    }
}
