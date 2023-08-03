package kotlinx.coroutines.debug.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.googlecode.mp4parser.boxes.apple.x0;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.p0;

/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003\u0017(\u000eB\u0011\u0012\b\b\u0002\u0010\u0019\u001a\u00020%¢\u0006\u0004\b&\u0010'J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\n\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u00002\b\u0010\t\u001a\u0004\u0018\u00018\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000e\u001a\u00020\u00052\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0012\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0012\u0010\u000bJ\u0019\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0007J\r\u0010\u0015\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0007R\u001c\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R&\u0010$\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\"0\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010 ¨\u0006)"}, d2 = {"Lkotlinx/coroutines/debug/internal/b;", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/AbstractMutableMap;", "", "d", "()V", "key", "value", "e", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/i;", "w", "c", "(Lkotlinx/coroutines/debug/internal/i;)V", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "put", "remove", "clear", "f", "Ljava/lang/ref/ReferenceQueue;", "a", "Ljava/lang/ref/ReferenceQueue;", "weakRefQueue", "", "getSize", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "getKeys", "()Ljava/util/Set;", "keys", "", "getEntries", "entries", "", "<init>", "(Z)V", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b<K, V> extends AbstractMutableMap<K, V> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f85182b = AtomicIntegerFieldUpdater.newUpdater(b.class, "_size");
    @m8.g
    private volatile /* synthetic */ int _size;
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final ReferenceQueue<K> f85183a;
    @m8.g
    volatile /* synthetic */ Object core;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\n\b\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010 \u001a\u00020\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00028\u00002\b\u0010\r\u001a\u0004\u0018\u00018\u00012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00120\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00072\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u000e¢\u0006\u0004\b\u0016\u0010\u0017J3\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00020\u001b\"\u0004\b\u0002\u0010\u00182\u0018\u0010\u001a\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010 \u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001fR\u0014\u0010\"\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001f¨\u0006%"}, d2 = {"Lkotlinx/coroutines/debug/internal/b$a;", "", "", "hash", "d", "(I)I", "index", "", ContextChain.TAG_INFRA, "(I)V", "key", "c", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "Lkotlinx/coroutines/debug/internal/i;", "weakKey0", "f", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/i;)Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/b;", "h", "()Lkotlinx/coroutines/debug/internal/b$a;", "weakRef", "b", "(Lkotlinx/coroutines/debug/internal/i;)V", ExifInterface.LONGITUDE_EAST, "Lkotlin/Function2;", "factory", "", "e", "(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;", "a", "I", "allocated", "shift", "threshold", "<init>", "(Lkotlinx/coroutines/debug/internal/b;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class a {

        /* renamed from: g  reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f85184g = AtomicIntegerFieldUpdater.newUpdater(a.class, x0.f36550r);

        /* renamed from: a  reason: collision with root package name */
        private final int f85185a;

        /* renamed from: b  reason: collision with root package name */
        private final int f85186b;

        /* renamed from: c  reason: collision with root package name */
        private final int f85187c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ AtomicReferenceArray f85188d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ AtomicReferenceArray f85189e;
        @m8.g
        private volatile /* synthetic */ int load = 0;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: ConcurrentWeakMap.kt */
        @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\t\u0010\u0006\u001a\u00020\u0005H\u0096\u0002J\u0010\u0010\u0007\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\n\u001a\u00020\tH\u0016R&\u0010\r\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\fR\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000fR\u0016\u0010\u0013\u001a\u00028\u00008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00028\u00018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0014\u0010\u0012¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/debug/internal/b$a$a;", ExifInterface.LONGITUDE_EAST, "", "", "a", "", "hasNext", "next", "()Ljava/lang/Object;", "", "b", "Lkotlin/Function2;", "Lkotlin/jvm/functions/Function2;", "factory", "", "I", "index", "c", "Ljava/lang/Object;", "key", "d", "value", "<init>", "(Lkotlinx/coroutines/debug/internal/b$a;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.debug.internal.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public final class C0730a<E> implements Iterator<E>, KMutableIterator {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            private final Function2<K, V, E> f85191a;

            /* renamed from: b  reason: collision with root package name */
            private int f85192b = -1;

            /* renamed from: c  reason: collision with root package name */
            private K f85193c;

            /* renamed from: d  reason: collision with root package name */
            private V f85194d;

            /* JADX WARN: Multi-variable type inference failed */
            public C0730a(@m8.g Function2<? super K, ? super V, ? extends E> function2) {
                this.f85191a = function2;
                a();
            }

            private final void a() {
                while (true) {
                    int i4 = this.f85192b + 1;
                    this.f85192b = i4;
                    if (i4 >= ((a) a.this).f85185a) {
                        return;
                    }
                    i iVar = (i) a.this.f85188d.get(this.f85192b);
                    K k10 = iVar == null ? null : (K) iVar.get();
                    if (k10 != null) {
                        this.f85193c = k10;
                        V v9 = (V) a.this.f85189e.get(this.f85192b);
                        if (v9 instanceof j) {
                            v9 = (V) ((j) v9).f85235a;
                        }
                        if (v9 != null) {
                            this.f85194d = v9;
                            return;
                        }
                    }
                }
            }

            @Override // java.util.Iterator
            @m8.g
            /* renamed from: b */
            public Void remove() {
                kotlinx.coroutines.debug.internal.c.e();
                throw new KotlinNothingValueException();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f85192b < ((a) a.this).f85185a;
            }

            @Override // java.util.Iterator
            public E next() {
                if (this.f85192b < ((a) a.this).f85185a) {
                    Function2<K, V, E> function2 = this.f85191a;
                    K k10 = this.f85193c;
                    if (k10 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("key");
                        k10 = (K) Unit.INSTANCE;
                    }
                    V v9 = this.f85194d;
                    if (v9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("value");
                        v9 = (V) Unit.INSTANCE;
                    }
                    E invoke = function2.invoke(k10, v9);
                    a();
                    return invoke;
                }
                throw new NoSuchElementException();
            }
        }

        public a(int i4) {
            this.f85185a = i4;
            this.f85186b = Integer.numberOfLeadingZeros(i4) + 1;
            this.f85187c = (i4 * 2) / 3;
            this.f85188d = new AtomicReferenceArray(i4);
            this.f85189e = new AtomicReferenceArray(i4);
        }

        private final int d(int i4) {
            return (i4 * (-1640531527)) >>> this.f85186b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Object g(a aVar, Object obj, Object obj2, i iVar, int i4, Object obj3) {
            if ((i4 & 4) != 0) {
                iVar = null;
            }
            return aVar.f(obj, obj2, iVar);
        }

        private final void i(int i4) {
            Object obj;
            do {
                obj = this.f85189e.get(i4);
                if (obj == null || (obj instanceof j)) {
                    return;
                }
            } while (!this.f85189e.compareAndSet(i4, obj, null));
            b.this.d();
        }

        public final void b(@m8.g i<?> iVar) {
            int d4 = d(iVar.f85234a);
            while (true) {
                i<?> iVar2 = (i) this.f85188d.get(d4);
                if (iVar2 == null) {
                    return;
                }
                if (iVar2 == iVar) {
                    i(d4);
                    return;
                }
                if (d4 == 0) {
                    d4 = this.f85185a;
                }
                d4--;
            }
        }

        @m8.h
        public final V c(@m8.g K k10) {
            int d4 = d(k10.hashCode());
            while (true) {
                i iVar = (i) this.f85188d.get(d4);
                if (iVar == null) {
                    return null;
                }
                T t9 = iVar.get();
                if (Intrinsics.areEqual(k10, t9)) {
                    V v9 = (V) this.f85189e.get(d4);
                    return v9 instanceof j ? (V) ((j) v9).f85235a : v9;
                }
                if (t9 == 0) {
                    i(d4);
                }
                if (d4 == 0) {
                    d4 = this.f85185a;
                }
                d4--;
            }
        }

        @m8.g
        public final <E> Iterator<E> e(@m8.g Function2<? super K, ? super V, ? extends E> function2) {
            return new C0730a(function2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
            r6 = r5.f85189e.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
            if ((r6 instanceof kotlinx.coroutines.debug.internal.j) == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
            r6 = kotlinx.coroutines.debug.internal.c.f85204c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
            if (r5.f85189e.compareAndSet(r0, r6, r7) == false) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
            return r6;
         */
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object f(@m8.g K r6, @m8.h V r7, @m8.h kotlinx.coroutines.debug.internal.i<K> r8) {
            /*
                r5 = this;
                int r0 = r6.hashCode()
                int r0 = r5.d(r0)
                r1 = 0
            L9:
                java.util.concurrent.atomic.AtomicReferenceArray r2 = r5.f85188d
                java.lang.Object r2 = r2.get(r0)
                kotlinx.coroutines.debug.internal.i r2 = (kotlinx.coroutines.debug.internal.i) r2
                if (r2 != 0) goto L45
                r2 = 0
                if (r7 != 0) goto L17
                return r2
            L17:
                if (r1 != 0) goto L2f
            L19:
                int r1 = r5.load
                int r3 = r5.f85187c
                if (r1 < r3) goto L24
                kotlinx.coroutines.internal.p0 r6 = kotlinx.coroutines.debug.internal.c.a()
                return r6
            L24:
                int r3 = r1 + 1
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r4 = kotlinx.coroutines.debug.internal.b.a.f85184g
                boolean r1 = r4.compareAndSet(r5, r1, r3)
                if (r1 == 0) goto L19
                r1 = 1
            L2f:
                if (r8 != 0) goto L3c
                kotlinx.coroutines.debug.internal.i r8 = new kotlinx.coroutines.debug.internal.i
                kotlinx.coroutines.debug.internal.b<K, V> r3 = kotlinx.coroutines.debug.internal.b.this
                java.lang.ref.ReferenceQueue r3 = kotlinx.coroutines.debug.internal.b.b(r3)
                r8.<init>(r6, r3)
            L3c:
                java.util.concurrent.atomic.AtomicReferenceArray r3 = r5.f85188d
                boolean r2 = r3.compareAndSet(r0, r2, r8)
                if (r2 == 0) goto L9
                goto L56
            L45:
                java.lang.Object r2 = r2.get()
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r2)
                if (r3 == 0) goto L6e
                if (r1 == 0) goto L56
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r6 = kotlinx.coroutines.debug.internal.b.a.f85184g
                r6.decrementAndGet(r5)
            L56:
                java.util.concurrent.atomic.AtomicReferenceArray r6 = r5.f85189e
                java.lang.Object r6 = r6.get(r0)
                boolean r8 = r6 instanceof kotlinx.coroutines.debug.internal.j
                if (r8 == 0) goto L65
                kotlinx.coroutines.internal.p0 r6 = kotlinx.coroutines.debug.internal.c.a()
                return r6
            L65:
                java.util.concurrent.atomic.AtomicReferenceArray r8 = r5.f85189e
                boolean r8 = r8.compareAndSet(r0, r6, r7)
                if (r8 == 0) goto L56
                return r6
            L6e:
                if (r2 != 0) goto L73
                r5.i(r0)
            L73:
                if (r0 != 0) goto L77
                int r0 = r5.f85185a
            L77:
                int r0 = r0 + (-1)
                goto L9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.b.a.f(java.lang.Object, java.lang.Object, kotlinx.coroutines.debug.internal.i):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @m8.g
        public final b<K, V>.a h() {
            int coerceAtLeast;
            Object obj;
            p0 p0Var;
            j d4;
            while (true) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(b.this.size(), 4);
                b<K, V>.a aVar = (b<K, V>.a) new a(Integer.highestOneBit(coerceAtLeast) * 4);
                int i4 = 0;
                int i10 = this.f85185a;
                while (i4 < i10) {
                    int i11 = i4 + 1;
                    i iVar = (i) this.f85188d.get(i4);
                    Object obj2 = iVar == null ? null : iVar.get();
                    if (iVar != null && obj2 == null) {
                        i(i4);
                    }
                    while (true) {
                        obj = this.f85189e.get(i4);
                        if (obj instanceof j) {
                            obj = ((j) obj).f85235a;
                            break;
                        }
                        AtomicReferenceArray atomicReferenceArray = this.f85189e;
                        d4 = kotlinx.coroutines.debug.internal.c.d(obj);
                        if (atomicReferenceArray.compareAndSet(i4, obj, d4)) {
                            break;
                        }
                    }
                    if (obj2 != null && obj != null) {
                        Object f10 = aVar.f(obj2, obj, iVar);
                        p0Var = kotlinx.coroutines.debug.internal.c.f85204c;
                        if (f10 == p0Var) {
                            break;
                        }
                    }
                    i4 = i11;
                }
                return aVar;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0002\b\u000e\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003B\u0017\u0012\u0006\u0010\u000b\u001a\u00028\u0002\u0012\u0006\u0010\u000e\u001a\u00028\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0005\u001a\u00028\u00032\u0006\u0010\u0004\u001a\u00028\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\u000b\u001a\u00028\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000e\u001a\u00028\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/debug/internal/b$b;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "newValue", "setValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "a", "Ljava/lang/Object;", "getKey", "()Ljava/lang/Object;", "key", "b", "getValue", "value", "<init>", "(Ljava/lang/Object;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.debug.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0731b<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: a  reason: collision with root package name */
        private final K f85196a;

        /* renamed from: b  reason: collision with root package name */
        private final V f85197b;

        public C0731b(K k10, V v9) {
            this.f85196a = k10;
            this.f85197b = v9;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f85196a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f85197b;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v9) {
            kotlinx.coroutines.debug.internal.c.e();
            throw new KotlinNothingValueException();
        }
    }

    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002B!\u0012\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007H\u0096\u0002R&\u0010\f\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/debug/internal/b$c;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableSet;", "element", "", "add", "(Ljava/lang/Object;)Z", "", "iterator", "Lkotlin/Function2;", "a", "Lkotlin/jvm/functions/Function2;", "factory", "", "getSize", "()I", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "(Lkotlinx/coroutines/debug/internal/b;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    private final class c<E> extends AbstractMutableSet<E> {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final Function2<K, V, E> f85198a;

        /* JADX WARN: Multi-variable type inference failed */
        public c(@m8.g Function2<? super K, ? super V, ? extends E> function2) {
            this.f85198a = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(E e4) {
            kotlinx.coroutines.debug.internal.c.e();
            throw new KotlinNothingValueException();
        }

        @Override // kotlin.collections.AbstractMutableSet
        public int getSize() {
            return b.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        @m8.g
        public Iterator<E> iterator() {
            return ((a) b.this.core).e(this.f85198a);
        }
    }

    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010'\n\u0002\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u0001H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "k", "v", "", "a", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class d extends Lambda implements Function2<K, V, Map.Entry<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f85200a = new d();

        d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        /* renamed from: a */
        public final Map.Entry<K, V> invoke(@m8.g K k10, @m8.g V v9) {
            return new C0731b(k10, v9);
        }
    }

    /* compiled from: ConcurrentWeakMap.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002\"\b\b\u0001\u0010\u0003*\u00020\u00022\u0006\u0010\u0004\u001a\u0002H\u00012\u0006\u0010\u0005\u001a\u0002H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "K", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "k", "<anonymous parameter 1>", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class e extends Lambda implements Function2<K, V, K> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f85201a = new e();

        e() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        public final K invoke(@m8.g K k10, @m8.g V v9) {
            return k10;
        }
    }

    public b() {
        this(false, 1, null);
    }

    public /* synthetic */ b(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? false : z9);
    }

    private final void c(i<?> iVar) {
        ((a) this.core).b(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d() {
        f85182b.decrementAndGet(this);
    }

    private final synchronized V e(K k10, V v9) {
        V v10;
        p0 p0Var;
        a aVar = (a) this.core;
        while (true) {
            v10 = (V) a.g(aVar, k10, v9, null, 4, null);
            p0Var = kotlinx.coroutines.debug.internal.c.f85204c;
            if (v10 == p0Var) {
                aVar = aVar.h();
                this.core = aVar;
            }
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (K k10 : keySet()) {
            remove(k10);
        }
    }

    public final void f() {
        if (!(this.f85183a != null)) {
            throw new IllegalStateException("Must be created with weakRefQueue = true".toString());
        }
        while (true) {
            try {
                Reference<? extends K> remove = this.f85183a.remove();
                if (remove == null) {
                    break;
                }
                c((i) remove);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
    }

    @Override // java.util.AbstractMap, java.util.Map
    @m8.h
    public V get(@m8.h Object obj) {
        if (obj == null) {
            return null;
        }
        return (V) ((a) this.core).c(obj);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @m8.g
    public Set<Map.Entry<K, V>> getEntries() {
        return new c(d.f85200a);
    }

    @Override // kotlin.collections.AbstractMutableMap
    @m8.g
    public Set<K> getKeys() {
        return new c(e.f85201a);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public int getSize() {
        return this._size;
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    @m8.h
    public V put(@m8.g K k10, @m8.g V v9) {
        p0 p0Var;
        V v10 = (V) a.g((a) this.core, k10, v9, null, 4, null);
        p0Var = kotlinx.coroutines.debug.internal.c.f85204c;
        if (v10 == p0Var) {
            v10 = e(k10, v9);
        }
        if (v10 == null) {
            f85182b.incrementAndGet(this);
        }
        return v10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    @m8.h
    public V remove(@m8.h Object obj) {
        p0 p0Var;
        if (obj == 0) {
            return null;
        }
        V v9 = (V) a.g((a) this.core, obj, null, null, 4, null);
        p0Var = kotlinx.coroutines.debug.internal.c.f85204c;
        if (v9 == p0Var) {
            v9 = e(obj, null);
        }
        if (v9 != null) {
            f85182b.decrementAndGet(this);
        }
        return v9;
    }

    public b(boolean z9) {
        this._size = 0;
        this.core = new a(16);
        this.f85183a = z9 ? new ReferenceQueue<>() : null;
    }
}
