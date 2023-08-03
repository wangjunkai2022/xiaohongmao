package com.rudresh.videocompression.videocompression;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VideoConverter.java */
/* loaded from: classes3.dex */
public class l {
    public static float a(float f10, float f11, float f12) {
        return Float.isNaN(f10) ? f12 : Float.isInfinite(f10) ? f11 : Math.max(Math.min(f10, f11), f12);
    }

    private static String c(int i4, int i10, int i11, int i12, boolean z9) {
        int a10 = (int) a((Math.max(i4, i10) / Math.max(i12, i11)) * 0.8f, 2.0f, 1.0f);
        if (z9) {
            return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = " + a10 + ".0;\nconst float pixelSizeX = 1.0 / " + i4 + ".0;\nconst float pixelSizeY = 1.0 / " + i10 + ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
        }
        return "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = " + a10 + ".0;\nconst float pixelSizeX = 1.0 / " + i10 + ".0;\nconst float pixelSizeY = 1.0 / " + i4 + ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n";
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0118, code lost:
        if (r12[r6 + 3] != 1) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    @android.annotation.SuppressLint({"WrongConstant"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long d(android.media.MediaExtractor r28, com.rudresh.videocompression.videocompression.d r29, android.media.MediaCodec.BufferInfo r30, long r31, long r33, long r35, java.io.File r37, boolean r38) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 476
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rudresh.videocompression.videocompression.l.d(android.media.MediaExtractor, com.rudresh.videocompression.videocompression.d, android.media.MediaCodec$BufferInfo, long, long, long, java.io.File, boolean):long");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:468:0x08b5
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @android.annotation.SuppressLint({"WrongConstant"})
    public java.io.File b(java.io.File r51, java.io.File r52, int r53, int r54, int r55, int r56, int r57, int r58, int r59, int r60, long r61, long r63, int r65) {
        /*
            Method dump skipped, instructions count: 2414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rudresh.videocompression.videocompression.l.b(java.io.File, java.io.File, int, int, int, int, int, int, int, int, long, long, int):java.io.File");
    }
}
