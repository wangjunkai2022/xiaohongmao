package com.opensource.svgaplayer;

import android.content.Context;
import com.facebook.common.callercontext.ContextChain;
import java.io.File;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* compiled from: SVGACache.kt */
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001'B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0004J\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\nJ\u000e\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\nR\u0014\u0010\u001f\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010$\u001a\u00020\n8B@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u001c\u0010\u001e\u001a\u0004\b\"\u0010#¨\u0006("}, d2 = {"Lcom/opensource/svgaplayer/SVGACache;", "", "Landroid/content/Context;", "context", "", "n", "Lcom/opensource/svgaplayer/SVGACache$Type;", "type", "o", "h", "", "path", ContextChain.TAG_INFRA, "(Ljava/lang/String;)V", "", "m", "l", "cacheKey", "k", "str", "e", "Ljava/net/URL;", "url", "f", "Ljava/io/File;", "d", "g", "audio", "c", "a", "Ljava/lang/String;", "TAG", "b", "Lcom/opensource/svgaplayer/SVGACache$Type;", "j", "()Ljava/lang/String;", "cacheDir", "<init>", "()V", "Type", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class SVGACache {

    /* renamed from: a  reason: collision with root package name */
    private static final String f47147a = "SVGACache";

    /* renamed from: d  reason: collision with root package name */
    public static final SVGACache f47150d = new SVGACache();

    /* renamed from: b  reason: collision with root package name */
    private static Type f47148b = Type.DEFAULT;

    /* renamed from: c  reason: collision with root package name */
    private static String f47149c = "/";

    /* compiled from: SVGACache.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/opensource/svgaplayer/SVGACache$Type;", "", "(Ljava/lang/String;I)V", "DEFAULT", "FILE", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public enum Type {
        DEFAULT,
        FILE
    }

    /* compiled from: SVGACache.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public static final a f47152a = new a();

        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SVGACache sVGACache = SVGACache.f47150d;
            sVGACache.i(sVGACache.j());
            v4.c.f94196b.h(SVGACache.f47147a, "Clear svga cache done!");
        }
    }

    private SVGACache() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String j() {
        if (!Intrinsics.areEqual(f47149c, "/")) {
            File file = new File(f47149c);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return f47149c;
    }

    @m8.g
    public final File c(@m8.g String str) {
        return new File(j() + str + ".mp3");
    }

    @m8.g
    public final File d(@m8.g String str) {
        return new File(j() + str + com.fasterxml.jackson.core.e.f13819f);
    }

    @m8.g
    public final String e(@m8.g String str) {
        byte[] digest;
        MessageDigest messageDigest = MessageDigest.getInstance(shaded.org.apache.commons.codec.digest.f.f93510b);
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(charsetName)");
        byte[] bytes = str.getBytes(forName);
        Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
        messageDigest.update(bytes);
        String str2 = "";
        for (byte b10 : messageDigest.digest()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b10)}, 1));
            Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(format, *args)");
            sb.append(format);
            str2 = sb.toString();
        }
        return str2;
    }

    @m8.g
    public final String f(@m8.g URL url) {
        String url2 = url.toString();
        Intrinsics.checkExpressionValueIsNotNull(url2, "url.toString()");
        return e(url2);
    }

    @m8.g
    public final File g(@m8.g String str) {
        return new File(j() + str + ".svga");
    }

    public final void h() {
        if (!m()) {
            v4.c.f94196b.c(f47147a, "SVGACache is not init!");
        } else {
            i.f47267i.a().execute(a.f47152a);
        }
    }

    public final void i(@m8.g String str) {
        File[] listFiles;
        try {
            File file = new File(str);
            if (!file.exists()) {
                file = null;
            }
            if (file == null || (listFiles = file.listFiles()) == null) {
                return;
            }
            for (File file2 : listFiles) {
                if (file2.exists()) {
                    Intrinsics.checkExpressionValueIsNotNull(file2, "file");
                    if (file2.isDirectory()) {
                        SVGACache sVGACache = f47150d;
                        String absolutePath = file2.getAbsolutePath();
                        Intrinsics.checkExpressionValueIsNotNull(absolutePath, "file.absolutePath");
                        sVGACache.i(absolutePath);
                    }
                    file2.delete();
                }
            }
        } catch (Exception e4) {
            v4.c.f94196b.d(f47147a, "Clear svga cache path: " + str + " fail", e4);
        }
    }

    public final boolean k(@m8.g String str) {
        File g4;
        if (l()) {
            g4 = d(str);
        } else {
            g4 = g(str);
        }
        return g4.exists();
    }

    public final boolean l() {
        return f47148b == Type.DEFAULT;
    }

    public final boolean m() {
        return (Intrinsics.areEqual("/", j()) ^ true) && new File(j()).exists();
    }

    public final void n(@m8.h Context context) {
        o(context, Type.DEFAULT);
    }

    public final void o(@m8.h Context context, @m8.g Type type) {
        if (m() || context == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        File cacheDir = context.getCacheDir();
        Intrinsics.checkExpressionValueIsNotNull(cacheDir, "context.cacheDir");
        sb.append(cacheDir.getAbsolutePath());
        sb.append("/svga/");
        f47149c = sb.toString();
        File file = new File(j());
        if (!(!file.exists())) {
            file = null;
        }
        if (file != null) {
            file.mkdirs();
        }
        f47148b = type;
    }
}
