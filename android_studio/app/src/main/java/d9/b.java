package d9;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import org.koin.core.logger.Level;
import v8.d;

/* compiled from: KoinPlatformTools.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0012\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003J\u0012\u0010\t\u001a\u00020\u00052\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\r\u001a\u00020\fJ\u0006\u0010\u0011\u001a\u00020\u0010J-\u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00122\n\u0010\u0014\u001a\u00060\u0001j\u0002`\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001b\"\u0004\b\u0000\u0010\u0019\"\u0004\b\u0001\u0010\u001a¨\u0006\u001f"}, d2 = {"Ld9/b;", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "", "g", "Lkotlin/reflect/KClass;", "kClass", "f", "Lkotlin/LazyThreadSafetyMode;", "b", "Lorg/koin/core/logger/Level;", "level", "Lw8/b;", "c", "Lv8/d;", "a", "R", "Lorg/koin/mp/Lockable;", org.aspectj.lang.c.f91028k, "Lkotlin/Function0;", "block", ContextChain.TAG_INFRA, "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "h", "<init>", "()V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final b f62011a = new b();

    private b() {
    }

    public static /* synthetic */ w8.b d(b bVar, Level level, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            level = Level.INFO;
        }
        return bVar.c(level);
    }

    @g
    public final d a() {
        return v8.b.f94213a;
    }

    @g
    public final LazyThreadSafetyMode b() {
        return LazyThreadSafetyMode.SYNCHRONIZED;
    }

    @g
    public final w8.b c(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        return new w8.d(level);
    }

    @g
    public final String e() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    @g
    public final String f(@g KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        String name = JvmClassMappingKt.getJavaClass((KClass) kClass).getName();
        Intrinsics.checkNotNullExpressionValue(name, "kClass.java.name");
        return name;
    }

    @g
    public final String g(@g Exception e4) {
        String joinToString$default;
        boolean contains$default;
        Intrinsics.checkNotNullParameter(e4, "e");
        StringBuilder sb = new StringBuilder();
        sb.append(e4);
        sb.append(org.koin.core.instance.d.f92439c);
        StackTraceElement[] stackTrace = e4.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "e.stackTrace");
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTrace) {
            String className = stackTraceElement.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "it.className");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) className, (CharSequence) "sun.reflect", false, 2, (Object) null);
            if (!(!contains$default)) {
                break;
            }
            arrayList.add(stackTraceElement);
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, org.koin.core.instance.d.f92439c, null, null, 0, null, null, 62, null);
        sb.append(joinToString$default);
        return sb.toString();
    }

    @g
    public final <K, V> Map<K, V> h() {
        return new ConcurrentHashMap();
    }

    public final <R> R i(@g Object lock, @g Function0<? extends R> block) {
        R invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (lock) {
            invoke = block.invoke();
        }
        return invoke;
    }
}
