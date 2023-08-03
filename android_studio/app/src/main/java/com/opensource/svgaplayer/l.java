package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.SoundPool;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.i;
import com.opensource.svgaplayer.k;
import com.opensource.svgaplayer.proto.AudioEntity;
import com.opensource.svgaplayer.proto.MovieEntity;
import com.opensource.svgaplayer.proto.MovieParams;
import com.opensource.svgaplayer.proto.SpriteEntity;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import io.sentry.protocol.c;
import io.sentry.protocol.s;
import io.sentry.protocol.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.ByteString;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: SVGAVideoEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010r\u001a\u00020!¢\u0006\u0004\bs\u0010tB)\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010r\u001a\u00020!\u0012\u0006\u0010u\u001a\u00020D\u0012\u0006\u0010v\u001a\u00020D¢\u0006\u0004\bs\u0010wB\u0019\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010r\u001a\u00020!¢\u0006\u0004\bs\u0010xB)\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010r\u001a\u00020!\u0012\u0006\u0010u\u001a\u00020D\u0012\u0006\u0010v\u001a\u00020D¢\u0006\u0004\bs\u0010yJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bH\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J\u001e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00122\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001bH\u0002J$\u0010$\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001e2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020!0 H\u0002J\u0018\u0010'\u001a\u00020!2\u0006\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\u0015H\u0002J\u001c\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J\u001c\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00150 2\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J\u001e\u0010*\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00122\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001bH\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J'\u00100\u001a\u00020\u00042\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u001b2\b\u0010/\u001a\u0004\u0018\u00010.H\u0000¢\u0006\u0004\b0\u00101J\u0006\u00102\u001a\u00020\u0004R\u0014\u00105\u001a\u00020\u000b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R$\u0010C\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR$\u0010H\u001a\u00020D2\u0006\u0010E\u001a\u00020D8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0017\u0010*\u001a\u0004\bF\u0010GR$\u0010J\u001a\u00020D2\u0006\u0010E\u001a\u00020D8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b$\u0010*\u001a\u0004\bI\u0010GR(\u0010R\u001a\b\u0012\u0004\u0012\u00020L0K8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b'\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR(\u0010U\u001a\b\u0012\u0004\u0012\u00020#0K8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b(\u0010M\u001a\u0004\bS\u0010O\"\u0004\bT\u0010QR$\u0010[\u001a\u0004\u0018\u00010+8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010]R.\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00100 8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b,\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u0016\u0010f\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010eR\u0016\u0010g\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010*R\u0016\u0010h\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010*R\u0018\u0010j\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010iR\u001c\u0010l\u001a\b\u0012\u0004\u0012\u00020\u00040\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b`\u0010kR$\u0010n\u001a\u00020m2\u0006\u0010E\u001a\u00020m8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bn\u0010o\u001a\u0004\bp\u0010q¨\u0006z"}, d2 = {"Lcom/opensource/svgaplayer/l;", "", "Lorg/json/JSONObject;", "movieObject", "", "G", "Lcom/opensource/svgaplayer/proto/MovieParams;", "movieParams", "H", "json", "v", "", "imgName", "imgKey", "j", "filePath", "Landroid/graphics/Bitmap;", "d", "Lcom/opensource/svgaplayer/proto/MovieEntity;", "obj", "u", "", "byteArray", "e", y.b.f83920h, "entity", y.b.f83919g, "Lkotlin/Function0;", "completionBlock", "F", "Lcom/opensource/svgaplayer/proto/AudioEntity;", "audio", "Ljava/util/HashMap;", "Ljava/io/File;", "audiosFileMap", "Lt4/a;", "f", "audioCache", "value", "g", "h", ContextChain.TAG_INFRA, "I", "Landroid/media/SoundPool;", "k", com.alipay.sdk.authjs.a.f6838i, "Lcom/opensource/svgaplayer/i$e;", "playCallback", "w", "(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/i$e;)V", "c", "a", "Ljava/lang/String;", "TAG", "", "b", "Z", "l", "()Z", "z", "(Z)V", "antiAlias", "Lcom/opensource/svgaplayer/proto/MovieEntity;", "q", "()Lcom/opensource/svgaplayer/proto/MovieEntity;", "C", "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V", "movieItem", "", "<set-?>", "n", "()I", "FPS", "o", s.b.f83844a, "", "Lt4/f;", "Ljava/util/List;", "s", "()Ljava/util/List;", ExifInterface.LONGITUDE_EAST, "(Ljava/util/List;)V", "spriteList", "m", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "audioList", "Landroid/media/SoundPool;", "r", "()Landroid/media/SoundPool;", "D", "(Landroid/media/SoundPool;)V", "soundPool", "Lcom/opensource/svgaplayer/k$a;", "Lcom/opensource/svgaplayer/k$a;", "soundCallback", "Ljava/util/HashMap;", "p", "()Ljava/util/HashMap;", "B", "(Ljava/util/HashMap;)V", "imageMap", "Ljava/io/File;", "mCacheDir", "mFrameHeight", "mFrameWidth", "Lcom/opensource/svgaplayer/i$e;", "mPlayCallback", "Lkotlin/jvm/functions/Function0;", "mCallback", "Lu4/d;", "videoSize", "Lu4/d;", "t", "()Lu4/d;", "cacheDir", "<init>", "(Lorg/json/JSONObject;Ljava/io/File;)V", "frameWidth", "frameHeight", "(Lorg/json/JSONObject;Ljava/io/File;II)V", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V", "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final String f47328a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47329b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private MovieEntity f47330c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private u4.d f47331d;

    /* renamed from: e  reason: collision with root package name */
    private int f47332e;

    /* renamed from: f  reason: collision with root package name */
    private int f47333f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private List<t4.f> f47334g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private List<t4.a> f47335h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private SoundPool f47336i;

    /* renamed from: j  reason: collision with root package name */
    private k.a f47337j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private HashMap<String, Bitmap> f47338k;

    /* renamed from: l  reason: collision with root package name */
    private File f47339l;

    /* renamed from: m  reason: collision with root package name */
    private int f47340m;

    /* renamed from: n  reason: collision with root package name */
    private int f47341n;

    /* renamed from: o  reason: collision with root package name */
    private i.e f47342o;

    /* renamed from: p  reason: collision with root package name */
    private Function0<Unit> f47343p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SVGAVideoEntity.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            l.a(l.this).invoke();
        }
    }

    /* compiled from: SVGAVideoEntity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/opensource/svgaplayer/l$b", "Lcom/opensource/svgaplayer/k$a;", "", "value", "", "a", "onComplete", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class b implements k.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f47346b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MovieEntity f47347c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function0 f47348d;

        b(Ref.IntRef intRef, MovieEntity movieEntity, Function0 function0) {
            this.f47346b = intRef;
            this.f47347c = movieEntity;
            this.f47348d = function0;
        }

        @Override // com.opensource.svgaplayer.k.a
        public void a(float f10) {
            k.f47326e.m(f10, l.this);
        }

        @Override // com.opensource.svgaplayer.k.a
        public void onComplete() {
            Ref.IntRef intRef = this.f47346b;
            int i4 = intRef.element + 1;
            intRef.element = i4;
            List<AudioEntity> list = this.f47347c.audios;
            Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
            if (i4 >= list.size()) {
                this.f47348d.invoke();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SVGAVideoEntity.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/media/SoundPool;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "onLoadComplete"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class c implements SoundPool.OnLoadCompleteListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f47349a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MovieEntity f47350b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function0 f47351c;

        c(Ref.IntRef intRef, MovieEntity movieEntity, Function0 function0) {
            this.f47349a = intRef;
            this.f47350b = movieEntity;
            this.f47351c = function0;
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public final void onLoadComplete(SoundPool soundPool, int i4, int i10) {
            v4.c.f94196b.h("SVGAParser", "pool_complete");
            Ref.IntRef intRef = this.f47349a;
            int i11 = intRef.element + 1;
            intRef.element = i11;
            List<AudioEntity> list = this.f47350b.audios;
            Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
            if (i11 >= list.size()) {
                this.f47351c.invoke();
            }
        }
    }

    public l(@m8.g JSONObject jSONObject, @m8.g File file) {
        this(jSONObject, file, 0, 0);
    }

    private final void F(MovieEntity movieEntity, Function0<Unit> function0) {
        int collectionSizeOrDefault;
        List<AudioEntity> list = movieEntity.audios;
        if (list != null && !list.isEmpty()) {
            I(movieEntity, function0);
            HashMap<String, File> h4 = h(movieEntity);
            if (h4.size() == 0) {
                function0.invoke();
                return;
            }
            List<AudioEntity> list2 = movieEntity.audios;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (AudioEntity audio : list2) {
                Intrinsics.checkExpressionValueIsNotNull(audio, "audio");
                arrayList.add(f(audio, h4));
            }
            this.f47335h = arrayList;
            return;
        }
        function0.invoke();
    }

    private final void G(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("viewBox");
        if (optJSONObject != null) {
            this.f47331d = new u4.d(0.0d, 0.0d, optJSONObject.optDouble("width", 0.0d), optJSONObject.optDouble("height", 0.0d));
        }
        this.f47332e = jSONObject.optInt("fps", 20);
        this.f47333f = jSONObject.optInt(s.b.f83844a, 0);
    }

    private final void H(MovieParams movieParams) {
        Float f10;
        Float f11 = movieParams.viewBoxWidth;
        this.f47331d = new u4.d(0.0d, 0.0d, f11 != null ? f11.floatValue() : 0.0f, movieParams.viewBoxHeight != null ? f10.floatValue() : 0.0f);
        Integer num = movieParams.fps;
        this.f47332e = num != null ? num.intValue() : 20;
        Integer num2 = movieParams.frames;
        this.f47333f = num2 != null ? num2.intValue() : 0;
    }

    private final void I(MovieEntity movieEntity, Function0<Unit> function0) {
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = 0;
        if (k.f47326e.g()) {
            this.f47337j = new b(intRef, movieEntity, function0);
            return;
        }
        this.f47336i = k(movieEntity);
        v4.c.f94196b.h("SVGAParser", "pool_start");
        SoundPool soundPool = this.f47336i;
        if (soundPool != null) {
            soundPool.setOnLoadCompleteListener(new c(intRef, movieEntity, function0));
        }
    }

    public static final /* synthetic */ Function0 a(l lVar) {
        Function0<Unit> function0 = lVar.f47343p;
        if (function0 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mCallback");
        }
        return function0;
    }

    private final Bitmap d(String str) {
        return s4.d.f93276a.a(str, this.f47341n, this.f47340m);
    }

    private final Bitmap e(byte[] bArr, String str) {
        Bitmap a10 = s4.b.f93275a.a(bArr, this.f47341n, this.f47340m);
        return a10 != null ? a10 : d(str);
    }

    private final t4.a f(AudioEntity audioEntity, HashMap<String, File> hashMap) {
        t4.a aVar = new t4.a(audioEntity);
        Integer num = audioEntity.startTime;
        double intValue = num != null ? num.intValue() : 0;
        Integer num2 = audioEntity.totalTime;
        double intValue2 = num2 != null ? num2.intValue() : 0;
        if (((int) intValue2) == 0) {
            return aVar;
        }
        i.e eVar = this.f47342o;
        if (eVar != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, File> entry : hashMap.entrySet()) {
                arrayList.add(entry.getValue());
            }
            eVar.a(arrayList);
            Function0<Unit> function0 = this.f47343p;
            if (function0 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCallback");
            }
            function0.invoke();
            return aVar;
        }
        File file = hashMap.get(audioEntity.audioKey);
        if (file != null) {
            FileInputStream a10 = h.b.a(new FileInputStream(file), file);
            try {
                double available = a10.available();
                long j4 = (long) ((intValue / intValue2) * available);
                k kVar = k.f47326e;
                if (kVar.g()) {
                    aVar.i(Integer.valueOf(kVar.h(this.f47337j, a10.getFD(), j4, (long) available, 1)));
                } else {
                    SoundPool soundPool = this.f47336i;
                    aVar.i(soundPool != null ? Integer.valueOf(soundPool.load(a10.getFD(), j4, (long) available, 1)) : null);
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(a10, null);
            } finally {
            }
        }
        return aVar;
    }

    private final File g(File file, byte[] bArr) {
        file.createNewFile();
        l.b.a(new FileOutputStream(file), file).write(bArr);
        return file;
    }

    private final HashMap<String, File> h(MovieEntity movieEntity) {
        HashMap<String, byte[]> i4 = i(movieEntity);
        HashMap<String, File> hashMap = new HashMap<>();
        if (i4.size() > 0) {
            for (Map.Entry<String, byte[]> entry : i4.entrySet()) {
                File c10 = SVGACache.f47150d.c(entry.getKey());
                String key = entry.getKey();
                File file = c10.exists() ? c10 : null;
                if (file == null) {
                    file = g(c10, entry.getValue());
                }
                hashMap.put(key, file);
            }
        }
        return hashMap;
    }

    private final HashMap<String, byte[]> i(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        List slice;
        HashMap<String, byte[]> hashMap = new HashMap<>();
        Map<String, ByteString> map = movieEntity.images;
        if (map != null && (entrySet = map.entrySet()) != null) {
            Iterator<T> it = entrySet.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String imageKey = (String) entry.getKey();
                byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
                Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
                if (byteArray.length >= 4) {
                    slice = ArraysKt___ArraysKt.slice(byteArray, new IntRange(0, 3));
                    if (((Number) slice.get(0)).byteValue() == 73 && ((Number) slice.get(1)).byteValue() == 68 && ((Number) slice.get(2)).byteValue() == 51) {
                        Intrinsics.checkExpressionValueIsNotNull(imageKey, "imageKey");
                        hashMap.put(imageKey, byteArray);
                    } else if (((Number) slice.get(0)).byteValue() == -1 && ((Number) slice.get(1)).byteValue() == -5 && ((Number) slice.get(2)).byteValue() == -108) {
                        Intrinsics.checkExpressionValueIsNotNull(imageKey, "imageKey");
                        hashMap.put(imageKey, byteArray);
                    }
                }
            }
        }
        return hashMap;
    }

    private final String j(String str, String str2) {
        String str3 = this.f47339l.getAbsolutePath() + "/" + str;
        String str4 = str3 + ".png";
        String str5 = this.f47339l.getAbsolutePath() + "/" + str2 + ".png";
        return new File(str3).exists() ? str3 : new File(str4).exists() ? str4 : new File(str5).exists() ? str5 : "";
    }

    private final SoundPool k(MovieEntity movieEntity) {
        int coerceAtMost;
        try {
            SoundPool.Builder audioAttributes = new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build());
            List<AudioEntity> list = movieEntity.audios;
            Intrinsics.checkExpressionValueIsNotNull(list, "entity.audios");
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(12, list.size());
            return audioAttributes.setMaxStreams(coerceAtMost).build();
        } catch (Exception e4) {
            v4.c.f94196b.e(this.f47328a, e4);
            return null;
        }
    }

    private final void u(MovieEntity movieEntity) {
        Set<Map.Entry<String, ByteString>> entrySet;
        List slice;
        Map<String, ByteString> map = movieEntity.images;
        if (map == null || (entrySet = map.entrySet()) == null) {
            return;
        }
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            byte[] byteArray = ((ByteString) entry.getValue()).toByteArray();
            Intrinsics.checkExpressionValueIsNotNull(byteArray, "byteArray");
            if (byteArray.length >= 4) {
                slice = ArraysKt___ArraysKt.slice(byteArray, new IntRange(0, 3));
                if (((Number) slice.get(0)).byteValue() != 73 || ((Number) slice.get(1)).byteValue() != 68 || ((Number) slice.get(2)).byteValue() != 51) {
                    String utf8 = ((ByteString) entry.getValue()).utf8();
                    Intrinsics.checkExpressionValueIsNotNull(utf8, "entry.value.utf8()");
                    Object key = entry.getKey();
                    Intrinsics.checkExpressionValueIsNotNull(key, "entry.key");
                    Bitmap e4 = e(byteArray, j(utf8, (String) key));
                    if (e4 != null) {
                        AbstractMap abstractMap = this.f47338k;
                        Object key2 = entry.getKey();
                        Intrinsics.checkExpressionValueIsNotNull(key2, "entry.key");
                        abstractMap.put(key2, e4);
                    }
                }
            }
        }
    }

    private final void v(JSONObject jSONObject) {
        String replace$default;
        JSONObject optJSONObject = jSONObject.optJSONObject(c.b.f83644b);
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            Intrinsics.checkExpressionValueIsNotNull(keys, "imgJson.keys()");
            while (keys.hasNext()) {
                String imgKey = keys.next();
                String obj = optJSONObject.get(imgKey).toString();
                Intrinsics.checkExpressionValueIsNotNull(imgKey, "imgKey");
                String j4 = j(obj, imgKey);
                if (j4.length() == 0) {
                    return;
                }
                replace$default = StringsKt__StringsJVMKt.replace$default(imgKey, ".matte", "", false, 4, (Object) null);
                Bitmap d4 = d(j4);
                if (d4 != null) {
                    this.f47338k.put(replace$default, d4);
                }
            }
        }
    }

    private final void x(MovieEntity movieEntity) {
        List<t4.f> emptyList;
        int collectionSizeOrDefault;
        List<SpriteEntity> list = movieEntity.sprites;
        if (list != null) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
            emptyList = new ArrayList<>(collectionSizeOrDefault);
            for (SpriteEntity it : list) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                emptyList.add(new t4.f(it));
            }
        } else {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        this.f47334g = emptyList;
    }

    private final void y(JSONObject jSONObject) {
        List<t4.f> list;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("sprites");
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i4 = 0; i4 < length; i4++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i4);
                if (optJSONObject != null) {
                    arrayList.add(new t4.f(optJSONObject));
                }
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        this.f47334g = list;
    }

    public final void A(@m8.g List<t4.a> list) {
        this.f47335h = list;
    }

    public final void B(@m8.g HashMap<String, Bitmap> hashMap) {
        this.f47338k = hashMap;
    }

    public final void C(@m8.h MovieEntity movieEntity) {
        this.f47330c = movieEntity;
    }

    public final void D(@m8.h SoundPool soundPool) {
        this.f47336i = soundPool;
    }

    public final void E(@m8.g List<t4.f> list) {
        this.f47334g = list;
    }

    public final void c() {
        List<t4.a> emptyList;
        List<t4.f> emptyList2;
        if (k.f47326e.g()) {
            for (t4.a aVar : this.f47335h) {
                Integer d4 = aVar.d();
                if (d4 != null) {
                    k.f47326e.p(d4.intValue());
                }
            }
            this.f47337j = null;
        }
        SoundPool soundPool = this.f47336i;
        if (soundPool != null) {
            soundPool.release();
        }
        this.f47336i = null;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f47335h = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.f47334g = emptyList2;
        this.f47338k.clear();
    }

    public final boolean l() {
        return this.f47329b;
    }

    @m8.g
    public final List<t4.a> m() {
        return this.f47335h;
    }

    public final int n() {
        return this.f47332e;
    }

    public final int o() {
        return this.f47333f;
    }

    @m8.g
    public final HashMap<String, Bitmap> p() {
        return this.f47338k;
    }

    @m8.h
    public final MovieEntity q() {
        return this.f47330c;
    }

    @m8.h
    public final SoundPool r() {
        return this.f47336i;
    }

    @m8.g
    public final List<t4.f> s() {
        return this.f47334g;
    }

    @m8.g
    public final u4.d t() {
        return this.f47331d;
    }

    public final void w(@m8.g Function0<Unit> function0, @m8.h i.e eVar) {
        this.f47343p = function0;
        this.f47342o = eVar;
        MovieEntity movieEntity = this.f47330c;
        if (movieEntity == null) {
            if (function0 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mCallback");
            }
            function0.invoke();
            return;
        }
        if (movieEntity == null) {
            Intrinsics.throwNpe();
        }
        F(movieEntity, new a());
    }

    public final void z(boolean z9) {
        this.f47329b = z9;
    }

    public l(@m8.g JSONObject jSONObject, @m8.g File file, int i4, int i10) {
        List<t4.f> emptyList;
        List<t4.a> emptyList2;
        this.f47328a = "SVGAVideoEntity";
        this.f47329b = true;
        this.f47331d = new u4.d(0.0d, 0.0d, 0.0d, 0.0d);
        this.f47332e = 15;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f47334g = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.f47335h = emptyList2;
        this.f47338k = new HashMap<>();
        this.f47341n = i4;
        this.f47340m = i10;
        this.f47339l = file;
        JSONObject optJSONObject = jSONObject.optJSONObject("movie");
        if (optJSONObject != null) {
            G(optJSONObject);
            try {
                v(jSONObject);
            } catch (Exception e4) {
                e4.printStackTrace();
            } catch (OutOfMemoryError e10) {
                e10.printStackTrace();
            }
            y(jSONObject);
        }
    }

    public l(@m8.g MovieEntity movieEntity, @m8.g File file) {
        this(movieEntity, file, 0, 0);
    }

    public l(@m8.g MovieEntity movieEntity, @m8.g File file, int i4, int i10) {
        List<t4.f> emptyList;
        List<t4.a> emptyList2;
        this.f47328a = "SVGAVideoEntity";
        this.f47329b = true;
        this.f47331d = new u4.d(0.0d, 0.0d, 0.0d, 0.0d);
        this.f47332e = 15;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f47334g = emptyList;
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.f47335h = emptyList2;
        this.f47338k = new HashMap<>();
        this.f47341n = i4;
        this.f47340m = i10;
        this.f47339l = file;
        this.f47330c = movieEntity;
        MovieParams movieParams = movieEntity.params;
        if (movieParams != null) {
            H(movieParams);
        }
        try {
            u(movieEntity);
        } catch (Exception e4) {
            e4.printStackTrace();
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
        }
        x(movieEntity);
    }
}
