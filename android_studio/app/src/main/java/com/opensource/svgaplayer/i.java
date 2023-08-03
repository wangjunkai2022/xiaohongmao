package com.opensource.svgaplayer;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.http.HttpResponseCache;
import android.os.Handler;
import android.os.Looper;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.opensource.svgaplayer.proto.MovieEntity;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import io.sentry.protocol.y;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* compiled from: SVGAParser.kt */
@Metadata(bv = {}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 E2\u00020\u0001:\u000479<\fB\u0011\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\bC\u0010DJ$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J(\u0010\r\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J$\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u0018\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u0018\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u000e\u0010 \u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0016\u0010$\u001a\u00020\b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!J$\u0010(\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&J,\u0010,\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010+2\u0006\u0010*\u001a\u00020)2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&J.\u0010-\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010'\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006JB\u0010/\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010.\u001a\u00020\u00172\n\b\u0002\u0010'\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u00102\u001a\u00020\b2\u0006\u0010*\u001a\u00020)2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J,\u00103\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010.\u001a\u00020\u0017H\u0007R\u0018\u00106\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00103R\u0016\u0010:\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00103R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006F"}, d2 = {"Lcom/opensource/svgaplayer/i;", "", "Lcom/opensource/svgaplayer/l;", "videoItem", "Lcom/opensource/svgaplayer/i$d;", com.alipay.sdk.authjs.a.f6838i, "", "alias", "", "F", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "G", "cacheKey", "u", "Ljava/io/InputStream;", "inputStream", "", "M", "byteArray", "D", "bytes", "", "H", "P", "Ljava/io/File;", "outputFile", "dstDirPath", "B", "Landroid/content/Context;", "context", ExifInterface.LONGITUDE_EAST, "", "frameWidth", "frameHeight", "O", "name", "Lcom/opensource/svgaplayer/i$e;", "playCallback", "s", "Ljava/net/URL;", "url", "Lkotlin/Function0;", "z", y.b.f83919g, "closeInputStream", "v", "assetsName", "J", "K", "I", "a", "Landroid/content/Context;", "mContext", "b", "mFrameWidth", "c", "mFrameHeight", "Lcom/opensource/svgaplayer/i$c;", "d", "Lcom/opensource/svgaplayer/i$c;", "C", "()Lcom/opensource/svgaplayer/i$c;", "N", "(Lcom/opensource/svgaplayer/i$c;)V", "fileDownloader", "<init>", "(Landroid/content/Context;)V", ContextChain.TAG_INFRA, com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class i {

    /* renamed from: e */
    private static final String f47263e = "SVGAParser";

    /* renamed from: a */
    private Context f47268a;

    /* renamed from: b */
    private volatile int f47269b;

    /* renamed from: c */
    private volatile int f47270c;
    @m8.g

    /* renamed from: d */
    private c f47271d;

    /* renamed from: i */
    public static final b f47267i = new b(null);

    /* renamed from: f */
    private static final AtomicInteger f47264f = new AtomicInteger(0);

    /* renamed from: g */
    private static i f47265g = new i(null);

    /* renamed from: h */
    private static ExecutorService f47266h = Executors.newCachedThreadPool(a.f47272a);

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "r", "Ljava/lang/Runnable;", "kotlin.jvm.PlatformType", "newThread"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    static final class a implements ThreadFactory {

        /* renamed from: a */
        public static final a f47272a = new a();

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        @m8.g
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "SVGAParser-Thread-" + i.f47264f.getAndIncrement());
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R*\u0010\n\u001a\n \t*\u0004\u0018\u00010\b0\b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/opensource/svgaplayer/i$b;", "", "Ljava/util/concurrent/ThreadPoolExecutor;", "executor", "", "b", "Lcom/opensource/svgaplayer/i;", "d", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "threadPoolExecutor", "Ljava/util/concurrent/ExecutorService;", "a", "()Ljava/util/concurrent/ExecutorService;", "c", "(Ljava/util/concurrent/ExecutorService;)V", "", "TAG", "Ljava/lang/String;", "mShareParser", "Lcom/opensource/svgaplayer/i;", "Ljava/util/concurrent/atomic/AtomicInteger;", "threadNum", "Ljava/util/concurrent/atomic/AtomicInteger;", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class b {
        private b() {
        }

        public final ExecutorService a() {
            return i.f47266h;
        }

        public final void b(@m8.g ThreadPoolExecutor threadPoolExecutor) {
            c(threadPoolExecutor);
        }

        public final void c(ExecutorService executorService) {
            i.f47266h = executorService;
        }

        @m8.g
        public final i d() {
            return i.f47265g;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J`\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0003\u001a\u00020\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\t0\u00042%\u0010\u000e\u001a!\u0012\u0017\u0012\u00150\u000bj\u0002`\f¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\t0\u0004H\u0016R\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/opensource/svgaplayer/i$c;", "", "Ljava/net/URL;", "url", "Lkotlin/Function1;", "Ljava/io/InputStream;", "Lkotlin/ParameterName;", "name", "inputStream", "", "complete", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "failure", "Lkotlin/Function0;", "b", "", "a", "Z", "()Z", "c", "(Z)V", "noCache", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a */
        private boolean f47273a;

        /* compiled from: SVGAParser.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        public static final class a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ URL f47275b;

            /* renamed from: c */
            final /* synthetic */ Ref.BooleanRef f47276c;

            /* renamed from: d */
            final /* synthetic */ Function1 f47277d;

            /* renamed from: e */
            final /* synthetic */ Function1 f47278e;

            a(URL url, Ref.BooleanRef booleanRef, Function1 function1, Function1 function12) {
                c.this = r1;
                this.f47275b = url;
                this.f47276c = booleanRef;
                this.f47277d = function1;
                this.f47278e = function12;
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    v4.c cVar = v4.c.f94196b;
                    cVar.h(i.f47263e, "================ svga file download start ================");
                    if (HttpResponseCache.getInstalled() == null && !c.this.a()) {
                        cVar.c(i.f47263e, "SVGAParser can not handle cache before install HttpResponseCache. see https://github.com/yyued/SVGAPlayer-Android#cache");
                        cVar.c(i.f47263e, "在配置 HttpResponseCache 前 SVGAParser 无法缓存. 查看 https://github.com/yyued/SVGAPlayer-Android#cache ");
                    }
                    URLConnection openConnection = this.f47275b.openConnection();
                    if (!(openConnection instanceof HttpURLConnection)) {
                        openConnection = null;
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                    if (httpURLConnection != null) {
                        httpURLConnection.setConnectTimeout(com.alipay.sdk.data.a.f6866f);
                        httpURLConnection.setRequestMethod(AsyncHttpGet.f44554o);
                        httpURLConnection.setRequestProperty(com.google.common.net.b.f34639o, "close");
                        httpURLConnection.connect();
                        InputStream inputStream = httpURLConnection.getInputStream();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                if (this.f47276c.element) {
                                    v4.c.f94196b.l(i.f47263e, "================ svga file download canceled ================");
                                    break;
                                }
                                int read = inputStream.read(bArr, 0, 4096);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                            if (this.f47276c.element) {
                                v4.c.f94196b.l(i.f47263e, "================ svga file download canceled ================");
                                CloseableKt.closeFinally(byteArrayOutputStream, null);
                                CloseableKt.closeFinally(inputStream, null);
                                return;
                            }
                            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            v4.c.f94196b.h(i.f47263e, "================ svga file download complete ================");
                            this.f47277d.invoke(byteArrayInputStream);
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(byteArrayInputStream, null);
                            CloseableKt.closeFinally(byteArrayOutputStream, null);
                            CloseableKt.closeFinally(inputStream, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(byteArrayOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                } catch (Exception e4) {
                    v4.c cVar2 = v4.c.f94196b;
                    cVar2.c(i.f47263e, "================ svga file download fail ================");
                    cVar2.c(i.f47263e, "error: " + e4.getMessage());
                    e4.printStackTrace();
                    this.f47278e.invoke(e4);
                }
            }
        }

        /* compiled from: SVGAParser.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ Ref.BooleanRef f47279a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(Ref.BooleanRef booleanRef) {
                super(0);
                this.f47279a = booleanRef;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke */
            public final void invoke2() {
                this.f47279a.element = true;
            }
        }

        public final boolean a() {
            return this.f47273a;
        }

        @m8.g
        public Function0<Unit> b(@m8.g URL url, @m8.g Function1<? super InputStream, Unit> function1, @m8.g Function1<? super Exception, Unit> function12) {
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            booleanRef.element = false;
            b bVar = new b(booleanRef);
            i.f47267i.a().execute(new a(url, booleanRef, function1, function12));
            return bVar;
        }

        public final void c(boolean z9) {
            this.f47273a = z9;
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0004H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/i$d;", "", "Lcom/opensource/svgaplayer/l;", "videoItem", "", "b", "a", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public interface d {
        void a();

        void b(@m8.g com.opensource.svgaplayer.l lVar);
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/i$e;", "", "", "Ljava/io/File;", "file", "", "a", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public interface e {
        void a(@m8.g List<? extends File> list);
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class f implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f47281b;

        /* renamed from: c */
        final /* synthetic */ d f47282c;

        /* renamed from: d */
        final /* synthetic */ e f47283d;

        f(String str, d dVar, e eVar) {
            i.this = r1;
            this.f47281b = str;
            this.f47282c = dVar;
            this.f47283d = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AssetManager assets;
            InputStream open;
            try {
                Context context = i.this.f47268a;
                if (context == null || (assets = context.getAssets()) == null || (open = assets.open(this.f47281b)) == null) {
                    return;
                }
                i iVar = i.this;
                SVGACache sVGACache = SVGACache.f47150d;
                iVar.v(open, sVGACache.e("file:///assets/" + this.f47281b), this.f47282c, true, this.f47283d, this.f47281b);
            } catch (Exception e4) {
                i.this.G(e4, this.f47282c, this.f47281b);
            }
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class g implements Runnable {

        /* renamed from: b */
        final /* synthetic */ InputStream f47285b;

        /* renamed from: c */
        final /* synthetic */ String f47286c;

        /* renamed from: d */
        final /* synthetic */ d f47287d;

        /* renamed from: e */
        final /* synthetic */ String f47288e;

        /* renamed from: f */
        final /* synthetic */ e f47289f;

        /* renamed from: g */
        final /* synthetic */ boolean f47290g;

        /* compiled from: SVGAParser.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$2"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        static final class a implements Runnable {

            /* renamed from: a */
            final /* synthetic */ byte[] f47291a;

            /* renamed from: b */
            final /* synthetic */ g f47292b;

            a(byte[] bArr, g gVar) {
                this.f47291a = bArr;
                this.f47292b = gVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                File g4 = SVGACache.f47150d.g(this.f47292b.f47286c);
                try {
                    File file = g4.exists() ^ true ? g4 : null;
                    if (file != null) {
                        file.createNewFile();
                    }
                    l.b.a(new FileOutputStream(g4), g4).write(this.f47291a);
                    Unit unit = Unit.INSTANCE;
                } catch (Exception e4) {
                    v4.c.f94196b.d(i.f47263e, "create cache file fail.", e4);
                    g4.delete();
                }
            }
        }

        /* compiled from: SVGAParser.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0004"}, d2 = {"<anonymous>", "", "invoke", "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$1$3$1", "com/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1$$special$$inlined$let$lambda$1"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        static final class b extends Lambda implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ com.opensource.svgaplayer.l f47293a;

            /* renamed from: b */
            final /* synthetic */ g f47294b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(com.opensource.svgaplayer.l lVar, g gVar) {
                super(0);
                this.f47293a = lVar;
                this.f47294b = gVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke */
            public final void invoke2() {
                v4.c.f94196b.h(i.f47263e, "SVGAVideoEntity prepare success");
                g gVar = this.f47294b;
                i.this.F(this.f47293a, gVar.f47287d, gVar.f47288e);
            }
        }

        g(InputStream inputStream, String str, d dVar, String str2, e eVar, boolean z9) {
            i.this = r1;
            this.f47285b = inputStream;
            this.f47286c = str;
            this.f47287d = dVar;
            this.f47288e = str2;
            this.f47289f = eVar;
            this.f47290g = z9;
        }

        /* JADX WARN: Code restructure failed: missing block: B:70:0x002d, code lost:
            if (r3 != false) goto L19;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 382
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.opensource.svgaplayer.i.g.run():void");
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class h implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f47296b;

        /* renamed from: c */
        final /* synthetic */ String f47297c;

        /* renamed from: d */
        final /* synthetic */ d f47298d;

        /* renamed from: e */
        final /* synthetic */ e f47299e;

        /* compiled from: SVGAParser.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0005"}, d2 = {"<anonymous>", "", "invoke", "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$1$1$1$1", "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$1", "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$2"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a */
            final /* synthetic */ com.opensource.svgaplayer.l f47300a;

            /* renamed from: b */
            final /* synthetic */ h f47301b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(com.opensource.svgaplayer.l lVar, h hVar) {
                super(0);
                this.f47300a = lVar;
                this.f47301b = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke */
            public final void invoke2() {
                v4.c.f94196b.h(i.f47263e, "SVGAVideoEntity prepare success");
                h hVar = this.f47301b;
                i.this.F(this.f47300a, hVar.f47298d, hVar.f47296b);
            }
        }

        h(String str, String str2, d dVar, e eVar) {
            i.this = r1;
            this.f47296b = str;
            this.f47297c = str2;
            this.f47298d = dVar;
            this.f47299e = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            v4.c cVar;
            StringBuilder sb;
            FileInputStream a10;
            try {
                try {
                    cVar = v4.c.f94196b;
                    cVar.h(i.f47263e, "================ decode " + this.f47296b + " from svga cachel file to entity ================");
                    File g4 = SVGACache.f47150d.g(this.f47297c);
                    a10 = h.b.a(new FileInputStream(g4), g4);
                } catch (Exception e4) {
                    i.this.G(e4, this.f47298d, this.f47296b);
                    cVar = v4.c.f94196b;
                    sb = new StringBuilder();
                }
                try {
                    byte[] M = i.this.M(a10);
                    if (M != null) {
                        if (i.this.H(M)) {
                            i.this.u(this.f47297c, this.f47298d, this.f47296b);
                        } else {
                            cVar.h(i.f47263e, "inflate start");
                            byte[] D = i.this.D(M);
                            if (D != null) {
                                cVar.h(i.f47263e, "inflate complete");
                                MovieEntity decode = MovieEntity.ADAPTER.decode(D);
                                Intrinsics.checkExpressionValueIsNotNull(decode, "MovieEntity.ADAPTER.decode(it)");
                                com.opensource.svgaplayer.l lVar = new com.opensource.svgaplayer.l(decode, new File(this.f47297c), i.this.f47269b, i.this.f47270c);
                                cVar.h(i.f47263e, "SVGAVideoEntity prepare start");
                                lVar.w(new a(lVar, this), this.f47299e);
                            } else {
                                i.this.G(new Exception("inflate(bytes) cause exception"), this.f47298d, this.f47296b);
                            }
                        }
                    } else {
                        i.this.G(new Exception("readAsBytes(inputStream) cause exception"), this.f47298d, this.f47296b);
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(a10, null);
                    sb = new StringBuilder();
                    sb.append("================ decode ");
                    sb.append(this.f47296b);
                    sb.append(" from svga cachel file to entity end ================");
                    cVar.h(i.f47263e, sb.toString());
                } finally {
                }
            } catch (Throwable th) {
                v4.c cVar2 = v4.c.f94196b;
                cVar2.h(i.f47263e, "================ decode " + this.f47296b + " from svga cachel file to entity end ================");
                throw th;
            }
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* renamed from: com.opensource.svgaplayer.i$i */
    /* loaded from: classes3.dex */
    public static final class RunnableC0396i implements Runnable {

        /* renamed from: b */
        final /* synthetic */ String f47303b;

        /* renamed from: c */
        final /* synthetic */ d f47304c;

        /* renamed from: d */
        final /* synthetic */ String f47305d;

        /* renamed from: e */
        final /* synthetic */ e f47306e;

        RunnableC0396i(String str, d dVar, String str2, e eVar) {
            i.this = r1;
            this.f47303b = str;
            this.f47304c = dVar;
            this.f47305d = str2;
            this.f47306e = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (SVGACache.f47150d.l()) {
                i.this.u(this.f47303b, this.f47304c, this.f47305d);
            } else {
                i.this.x(this.f47303b, this.f47304c, this.f47306e, this.f47305d);
            }
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Ljava/io/InputStream;", "it", "", "a", "(Ljava/io/InputStream;)V"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class j extends Lambda implements Function1<InputStream, Unit> {

        /* renamed from: b */
        final /* synthetic */ String f47308b;

        /* renamed from: c */
        final /* synthetic */ d f47309c;

        /* renamed from: d */
        final /* synthetic */ e f47310d;

        /* renamed from: e */
        final /* synthetic */ String f47311e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, d dVar, e eVar, String str2) {
            super(1);
            i.this = r1;
            this.f47308b = str;
            this.f47309c = dVar;
            this.f47310d = eVar;
            this.f47311e = str2;
        }

        public final void a(@m8.g InputStream inputStream) {
            i.this.v(inputStream, this.f47308b, this.f47309c, false, this.f47310d, this.f47311e);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(InputStream inputStream) {
            a(inputStream);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Ljava/lang/Exception;", "Lkotlin/Exception;", "it", "", "a", "(Ljava/lang/Exception;)V"}, k = 3, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class k extends Lambda implements Function1<Exception, Unit> {

        /* renamed from: b */
        final /* synthetic */ URL f47313b;

        /* renamed from: c */
        final /* synthetic */ d f47314c;

        /* renamed from: d */
        final /* synthetic */ String f47315d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(URL url, d dVar, String str) {
            super(1);
            i.this = r1;
            this.f47313b = url;
            this.f47314c = dVar;
            this.f47315d = str;
        }

        public final void a(@m8.g Exception exc) {
            v4.c cVar = v4.c.f94196b;
            cVar.c(i.f47263e, "================ svga file: " + this.f47313b + " download fail ================");
            i.this.G(exc, this.f47314c, this.f47315d);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Exception exc) {
            a(exc);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class l implements Runnable {

        /* renamed from: a */
        final /* synthetic */ String f47316a;

        /* renamed from: b */
        final /* synthetic */ d f47317b;

        /* renamed from: c */
        final /* synthetic */ com.opensource.svgaplayer.l f47318c;

        l(String str, d dVar, com.opensource.svgaplayer.l lVar) {
            this.f47316a = str;
            this.f47317b = dVar;
            this.f47318c = lVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            v4.c cVar = v4.c.f94196b;
            cVar.h(i.f47263e, "================ " + this.f47316a + " parser complete ================");
            d dVar = this.f47317b;
            if (dVar != null) {
                dVar.b(this.f47318c);
            }
        }
    }

    /* compiled from: SVGAParser.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class m implements Runnable {

        /* renamed from: a */
        final /* synthetic */ d f47319a;

        m(d dVar) {
            this.f47319a = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            d dVar = this.f47319a;
            if (dVar != null) {
                dVar.a();
            }
        }
    }

    public i(@m8.h Context context) {
        this.f47268a = context != null ? context.getApplicationContext() : null;
        SVGACache.f47150d.n(context);
        this.f47271d = new c();
    }

    public static /* synthetic */ Function0 A(i iVar, URL url, d dVar, e eVar, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            eVar = null;
        }
        return iVar.z(url, dVar, eVar);
    }

    private final void B(File file, String str) {
        boolean startsWith$default;
        String dstDirCanonicalPath = new File(str).getCanonicalPath();
        String outputFileCanonicalPath = file.getCanonicalPath();
        Intrinsics.checkExpressionValueIsNotNull(outputFileCanonicalPath, "outputFileCanonicalPath");
        Intrinsics.checkExpressionValueIsNotNull(dstDirCanonicalPath, "dstDirCanonicalPath");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(outputFileCanonicalPath, dstDirCanonicalPath, false, 2, null);
        if (startsWith$default) {
            return;
        }
        throw new IOException("Found Zip Path Traversal Vulnerability with " + dstDirCanonicalPath);
    }

    public final byte[] D(byte[] bArr) {
        Inflater inflater = new Inflater();
        inflater.setInput(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int inflate = inflater.inflate(bArr2, 0, 2048);
                if (inflate <= 0) {
                    inflater.end();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr2, 0, inflate);
            } finally {
            }
        }
    }

    public final void F(com.opensource.svgaplayer.l lVar, d dVar, String str) {
        new Handler(Looper.getMainLooper()).post(new l(str, dVar, lVar));
    }

    public final void G(Exception exc, d dVar, String str) {
        exc.printStackTrace();
        v4.c cVar = v4.c.f94196b;
        cVar.c(f47263e, "================ " + str + " parser error ================");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" parse error");
        cVar.d(f47263e, sb.toString(), exc);
        new Handler(Looper.getMainLooper()).post(new m(dVar));
    }

    public final boolean H(byte[] bArr) {
        return bArr.length > 4 && bArr[0] == 80 && bArr[1] == 75 && bArr[2] == 3 && bArr[3] == 4;
    }

    public static /* synthetic */ void L(i iVar, InputStream inputStream, String str, d dVar, boolean z9, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            z9 = false;
        }
        iVar.I(inputStream, str, dVar, z9);
    }

    public final byte[] M(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read <= 0) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    CloseableKt.closeFinally(byteArrayOutputStream, null);
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } finally {
        }
    }

    public final void P(InputStream inputStream, String str) {
        boolean contains$default;
        boolean contains$default2;
        v4.c.f94196b.h(f47263e, "================ unzip prepare ================");
        File d4 = SVGACache.f47150d.d(str);
        d4.mkdirs();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            ZipInputStream zipInputStream = new ZipInputStream(bufferedInputStream);
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    Intrinsics.checkExpressionValueIsNotNull(name, "zipItem.name");
                    contains$default = StringsKt__StringsKt.contains$default((CharSequence) name, (CharSequence) "../", false, 2, (Object) null);
                    if (!contains$default) {
                        String name2 = nextEntry.getName();
                        Intrinsics.checkExpressionValueIsNotNull(name2, "zipItem.name");
                        contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) name2, (CharSequence) "/", false, 2, (Object) null);
                        if (!contains$default2) {
                            File file = new File(d4, nextEntry.getName());
                            String absolutePath = d4.getAbsolutePath();
                            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "cacheDir.absolutePath");
                            B(file, absolutePath);
                            FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int read = zipInputStream.read(bArr);
                                if (read <= 0) {
                                    break;
                                }
                                a10.write(bArr, 0, read);
                            }
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(a10, null);
                            v4.c.f94196b.c(f47263e, "================ unzip complete ================");
                            zipInputStream.closeEntry();
                        }
                    }
                } else {
                    Unit unit2 = Unit.INSTANCE;
                    CloseableKt.closeFinally(zipInputStream, null);
                    CloseableKt.closeFinally(bufferedInputStream, null);
                    return;
                }
            }
        } catch (Exception e4) {
            v4.c cVar = v4.c.f94196b;
            cVar.c(f47263e, "================ unzip error ================");
            cVar.d(f47263e, com.qennnsad.aknkaksd.data.websocket.b.f47825n, e4);
            SVGACache sVGACache = SVGACache.f47150d;
            String absolutePath2 = d4.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath2, "cacheDir.absolutePath");
            sVGACache.i(absolutePath2);
            d4.delete();
            throw e4;
        }
    }

    public static /* synthetic */ void t(i iVar, String str, d dVar, e eVar, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            eVar = null;
        }
        iVar.s(str, dVar, eVar);
    }

    public final void u(String str, d dVar, String str2) {
        v4.c cVar = v4.c.f94196b;
        cVar.h(f47263e, "================ decode " + str2 + " from cache ================");
        StringBuilder sb = new StringBuilder();
        sb.append("decodeFromCacheKey called with cacheKey : ");
        sb.append(str);
        cVar.a(f47263e, sb.toString());
        if (this.f47268a == null) {
            cVar.c(f47263e, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        try {
            File d4 = SVGACache.f47150d.d(str);
            File file = new File(d4, "movie.binary");
            if (!file.isFile()) {
                file = null;
            }
            if (file != null) {
                try {
                    cVar.h(f47263e, "binary change to entity");
                    FileInputStream a10 = h.b.a(new FileInputStream(file), file);
                    cVar.h(f47263e, "binary change to entity success");
                    MovieEntity decode = MovieEntity.ADAPTER.decode(a10);
                    Intrinsics.checkExpressionValueIsNotNull(decode, "MovieEntity.ADAPTER.decode(it)");
                    F(new com.opensource.svgaplayer.l(decode, d4, this.f47269b, this.f47270c), dVar, str2);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(a10, null);
                } catch (Exception e4) {
                    v4.c.f94196b.d(f47263e, "binary change to entity fail", e4);
                    d4.delete();
                    file.delete();
                    throw e4;
                }
            }
            File file2 = new File(d4, "movie.spec");
            if (!file2.isFile()) {
                file2 = null;
            }
            if (file2 == null) {
                return;
            }
            try {
                cVar.h(f47263e, "spec change to entity");
                FileInputStream a11 = h.b.a(new FileInputStream(file2), file2);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = a11.read(bArr, 0, 2048);
                    if (read == -1) {
                        JSONObject jSONObject = new JSONObject(byteArrayOutputStream.toString());
                        v4.c.f94196b.h(f47263e, "spec change to entity success");
                        F(new com.opensource.svgaplayer.l(jSONObject, d4, this.f47269b, this.f47270c), dVar, str2);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(byteArrayOutputStream, null);
                        CloseableKt.closeFinally(a11, null);
                        return;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } catch (Exception e10) {
                v4.c.f94196b.d(f47263e, str2 + " movie.spec change to entity fail", e10);
                d4.delete();
                file2.delete();
                throw e10;
            }
        } catch (Exception e11) {
            G(e11, dVar, str2);
        }
    }

    public static /* synthetic */ void w(i iVar, InputStream inputStream, String str, d dVar, boolean z9, e eVar, String str2, int i4, Object obj) {
        iVar.v(inputStream, str, dVar, (i4 & 8) != 0 ? false : z9, (i4 & 16) != 0 ? null : eVar, (i4 & 32) != 0 ? null : str2);
    }

    public static /* synthetic */ void y(i iVar, String str, d dVar, e eVar, String str2, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            str2 = null;
        }
        iVar.x(str, dVar, eVar, str2);
    }

    @m8.g
    public final c C() {
        return this.f47271d;
    }

    public final void E(@m8.g Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f47268a = applicationContext;
        SVGACache.f47150d.n(applicationContext);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)", imports = {}))
    public final void I(@m8.g InputStream inputStream, @m8.g String str, @m8.h d dVar, boolean z9) {
        w(this, inputStream, str, dVar, z9, null, null, 32, null);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromAssets(assetsName, callback)", imports = {}))
    public final void J(@m8.g String str, @m8.h d dVar) {
        s(str, dVar, null);
    }

    @Deprecated(message = "This method has been deprecated from 2.4.0.", replaceWith = @ReplaceWith(expression = "this.decodeFromURL(url, callback)", imports = {}))
    public final void K(@m8.g URL url, @m8.h d dVar) {
        z(url, dVar, null);
    }

    public final void N(@m8.g c cVar) {
        this.f47271d = cVar;
    }

    public final void O(int i4, int i10) {
        this.f47269b = i4;
        this.f47270c = i10;
    }

    public final void s(@m8.g String str, @m8.h d dVar, @m8.h e eVar) {
        if (this.f47268a == null) {
            v4.c.f94196b.c(f47263e, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        v4.c cVar = v4.c.f94196b;
        cVar.h(f47263e, "================ decode " + str + " from assets ================");
        f47266h.execute(new f(str, dVar, eVar));
    }

    public final void v(@m8.g InputStream inputStream, @m8.g String str, @m8.h d dVar, boolean z9, @m8.h e eVar, @m8.h String str2) {
        if (this.f47268a == null) {
            v4.c.f94196b.c(f47263e, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return;
        }
        v4.c cVar = v4.c.f94196b;
        cVar.h(f47263e, "================ decode " + str2 + " from input stream ================");
        f47266h.execute(new g(inputStream, str, dVar, str2, eVar, z9));
    }

    public final void x(@m8.g String str, @m8.h d dVar, @m8.h e eVar, @m8.h String str2) {
        f47266h.execute(new h(str2, str, dVar, eVar));
    }

    @m8.h
    public final Function0<Unit> z(@m8.g URL url, @m8.h d dVar, @m8.h e eVar) {
        if (this.f47268a == null) {
            v4.c.f94196b.c(f47263e, "在配置 SVGAParser context 前, 无法解析 SVGA 文件。");
            return null;
        }
        String url2 = url.toString();
        Intrinsics.checkExpressionValueIsNotNull(url2, "url.toString()");
        v4.c cVar = v4.c.f94196b;
        cVar.h(f47263e, "================ decode from url: " + url2 + " ================");
        SVGACache sVGACache = SVGACache.f47150d;
        String f10 = sVGACache.f(url);
        if (sVGACache.k(f10)) {
            cVar.h(f47263e, "this url cached");
            f47266h.execute(new RunnableC0396i(f10, dVar, url2, eVar));
            return null;
        }
        cVar.h(f47263e, "no cached, prepare to download");
        return this.f47271d.b(url, new j(f10, dVar, eVar, url2), new k(url, dVar, url2));
    }
}
