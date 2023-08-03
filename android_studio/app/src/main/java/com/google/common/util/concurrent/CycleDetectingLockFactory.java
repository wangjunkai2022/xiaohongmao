package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.b3;
import com.google.common.collect.d3;
import com.google.common.collect.f3;
import com.google.common.collect.o4;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@CanIgnoreReturnValue
@h3.c
@h3.a
/* loaded from: classes2.dex */
public class CycleDetectingLockFactory {

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, h>> f35006b = new d3().l().i();

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35007c = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<ArrayList<h>> f35008d = new a();

    /* renamed from: a  reason: collision with root package name */
    final i f35009a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @h3.a
    /* loaded from: classes2.dex */
    public static abstract class Policies implements i {
        public static final Policies DISABLED;
        public static final Policies THROW;
        public static final Policies WARN;

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ Policies[] f35010a;

        /* loaded from: classes2.dex */
        enum a extends Policies {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.i
            public void a(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends Policies {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.i
            public void a(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f35007c.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        }

        /* loaded from: classes2.dex */
        enum c extends Policies {
            c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.i
            public void a(PotentialDeadlockException potentialDeadlockException) {
            }
        }

        static {
            a aVar = new a("THROW", 0);
            THROW = aVar;
            b bVar = new b("WARN", 1);
            WARN = bVar;
            c cVar = new c("DISABLED", 2);
            DISABLED = cVar;
            f35010a = new Policies[]{aVar, bVar, cVar};
        }

        private Policies(String str, int i4) {
        }

        public static Policies valueOf(String str) {
            return (Policies) Enum.valueOf(Policies.class, str);
        }

        public static Policies[] values() {
            return (Policies[]) f35010a.clone();
        }

        /* synthetic */ Policies(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    @h3.a
    /* loaded from: classes2.dex */
    public static final class PotentialDeadlockException extends g {

        /* renamed from: c  reason: collision with root package name */
        private final g f35011c;

        /* synthetic */ PotentialDeadlockException(h hVar, h hVar2, g gVar, a aVar) {
            this(hVar, hVar2, gVar);
        }

        public g getConflictingStackTrace() {
            return this.f35011c;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable th = this.f35011c; th != null; th = th.getCause()) {
                sb.append(", ");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }

        private PotentialDeadlockException(h hVar, h hVar2, g gVar) {
            super(hVar, hVar2);
            this.f35011c = gVar;
            initCause(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends ThreadLocal<ArrayList<h>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<h> initialValue() {
            return b3.u(3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface b {
        h a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class c extends ReentrantLock implements b {

        /* renamed from: a  reason: collision with root package name */
        private final h f35012a;

        /* synthetic */ c(CycleDetectingLockFactory cycleDetectingLockFactory, h hVar, boolean z9, a aVar) {
            this(hVar, z9);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public h a() {
            return this.f35012a;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public boolean b() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }

        private c(h hVar, boolean z9) {
            super(z9);
            this.f35012a = (h) com.google.common.base.a0.E(hVar);
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j4, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this);
            try {
                return super.tryLock(j4, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class e extends ReentrantReadWriteLock implements b {

        /* renamed from: a  reason: collision with root package name */
        private final d f35016a;

        /* renamed from: b  reason: collision with root package name */
        private final f f35017b;

        /* renamed from: c  reason: collision with root package name */
        private final h f35018c;

        /* synthetic */ e(CycleDetectingLockFactory cycleDetectingLockFactory, h hVar, boolean z9, a aVar) {
            this(hVar, z9);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public h a() {
            return this.f35018c;
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.b
        public boolean b() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }

        private e(h hVar, boolean z9) {
            super(z9);
            this.f35016a = new d(this);
            this.f35017b = new f(this);
            this.f35018c = (h) com.google.common.base.a0.E(hVar);
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.f35016a;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.f35017b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class g extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        static final StackTraceElement[] f35022a = new StackTraceElement[0];

        /* renamed from: b  reason: collision with root package name */
        static final ImmutableSet<String> f35023b = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), g.class.getName(), h.class.getName());

        g(h hVar, h hVar2) {
            super(hVar.d() + " -> " + hVar2.d());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (j.class.getName().equals(stackTrace[i4].getClassName())) {
                    setStackTrace(f35022a);
                    return;
                } else if (!f35023b.contains(stackTrace[i4].getClassName())) {
                    setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i4, length));
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        final Map<h, g> f35024a = new d3().l().i();

        /* renamed from: b  reason: collision with root package name */
        final Map<h, PotentialDeadlockException> f35025b = new d3().l().i();

        /* renamed from: c  reason: collision with root package name */
        final String f35026c;

        h(String str) {
            this.f35026c = (String) com.google.common.base.a0.E(str);
        }

        @NullableDecl
        private g c(h hVar, Set<h> set) {
            if (set.add(this)) {
                g gVar = this.f35024a.get(hVar);
                if (gVar != null) {
                    return gVar;
                }
                for (Map.Entry<h, g> entry : this.f35024a.entrySet()) {
                    h key = entry.getKey();
                    g c10 = key.c(hVar, set);
                    if (c10 != null) {
                        g gVar2 = new g(key, this);
                        gVar2.setStackTrace(entry.getValue().getStackTrace());
                        gVar2.initCause(c10);
                        return gVar2;
                    }
                }
                return null;
            }
            return null;
        }

        void a(i iVar, h hVar) {
            com.google.common.base.a0.x0(this != hVar, "Attempted to acquire multiple locks with the same rank %s", hVar.d());
            if (this.f35024a.containsKey(hVar)) {
                return;
            }
            PotentialDeadlockException potentialDeadlockException = this.f35025b.get(hVar);
            if (potentialDeadlockException != null) {
                iVar.a(new PotentialDeadlockException(hVar, this, potentialDeadlockException.getConflictingStackTrace(), null));
                return;
            }
            g c10 = hVar.c(this, o4.z());
            if (c10 == null) {
                this.f35024a.put(hVar, new g(hVar, this));
                return;
            }
            PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(hVar, this, c10, null);
            this.f35025b.put(hVar, potentialDeadlockException2);
            iVar.a(potentialDeadlockException2);
        }

        void b(i iVar, List<h> list) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                a(iVar, list.get(i4));
            }
        }

        String d() {
            return this.f35026c;
        }
    }

    @h3.a
    /* loaded from: classes2.dex */
    public interface i {
        void a(PotentialDeadlockException potentialDeadlockException);
    }

    @h3.a
    /* loaded from: classes2.dex */
    public static final class j<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* renamed from: e  reason: collision with root package name */
        private final Map<E, h> f35027e;

        @h3.d
        j(i iVar, Map<E, h> map) {
            super(iVar, null);
            this.f35027e = map;
        }

        public ReentrantLock o(E e4) {
            return p(e4, false);
        }

        public ReentrantLock p(E e4, boolean z9) {
            return this.f35009a == Policies.DISABLED ? new ReentrantLock(z9) : new c(this, this.f35027e.get(e4), z9, null);
        }

        public ReentrantReadWriteLock q(E e4) {
            return r(e4, false);
        }

        public ReentrantReadWriteLock r(E e4, boolean z9) {
            return this.f35009a == Policies.DISABLED ? new ReentrantReadWriteLock(z9) : new e(this, this.f35027e.get(e4), z9, null);
        }
    }

    /* synthetic */ CycleDetectingLockFactory(i iVar, a aVar) {
        this(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b bVar) {
        if (bVar.b()) {
            return;
        }
        ArrayList<h> arrayList = f35008d.get();
        h a10 = bVar.a();
        a10.b(this.f35009a, arrayList);
        arrayList.add(a10);
    }

    @h3.d
    static <E extends Enum<E>> Map<E, h> e(Class<E> cls) {
        EnumMap W = f3.W(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList u9 = b3.u(length);
        int i4 = 0;
        for (E e4 : enumConstants) {
            h hVar = new h(f(e4));
            u9.add(hVar);
            W.put((EnumMap) e4, (E) hVar);
        }
        for (int i10 = 1; i10 < length; i10++) {
            ((h) u9.get(i10)).b(Policies.THROW, u9.subList(0, i10));
        }
        while (i4 < length - 1) {
            i4++;
            ((h) u9.get(i4)).b(Policies.DISABLED, u9.subList(i4, length));
        }
        return Collections.unmodifiableMap(W);
    }

    private static String f(Enum<?> r22) {
        return r22.getDeclaringClass().getSimpleName() + "." + r22.name();
    }

    private static Map<? extends Enum, h> g(Class<? extends Enum> cls) {
        ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, h>> concurrentMap = f35006b;
        Map<? extends Enum, h> map = concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum, h> e4 = e(cls);
        return (Map) com.google.common.base.v.a(concurrentMap.putIfAbsent(cls, e4), e4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void h(b bVar) {
        if (bVar.b()) {
            return;
        }
        ArrayList<h> arrayList = f35008d.get();
        h a10 = bVar.a();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == a10) {
                arrayList.remove(size);
                return;
            }
        }
    }

    public static CycleDetectingLockFactory i(i iVar) {
        return new CycleDetectingLockFactory(iVar);
    }

    public static <E extends Enum<E>> j<E> j(Class<E> cls, i iVar) {
        com.google.common.base.a0.E(cls);
        com.google.common.base.a0.E(iVar);
        return new j<>(iVar, g(cls));
    }

    public ReentrantLock k(String str) {
        return l(str, false);
    }

    public ReentrantLock l(String str, boolean z9) {
        return this.f35009a == Policies.DISABLED ? new ReentrantLock(z9) : new c(this, new h(str), z9, null);
    }

    public ReentrantReadWriteLock m(String str) {
        return n(str, false);
    }

    public ReentrantReadWriteLock n(String str, boolean z9) {
        return this.f35009a == Policies.DISABLED ? new ReentrantReadWriteLock(z9) : new e(this, new h(str), z9, null);
    }

    private CycleDetectingLockFactory(i iVar) {
        this.f35009a = (i) com.google.common.base.a0.E(iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class d extends ReentrantReadWriteLock.ReadLock {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final e f35014a;

        d(e eVar) {
            super(eVar);
            this.f35014a = eVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this.f35014a);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this.f35014a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f35014a);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this.f35014a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.f35014a);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this.f35014a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this.f35014a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j4, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f35014a);
            try {
                return super.tryLock(j4, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this.f35014a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class f extends ReentrantReadWriteLock.WriteLock {
        @Weak

        /* renamed from: a  reason: collision with root package name */
        final e f35020a;

        f(e eVar) {
            super(eVar);
            this.f35020a = eVar;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.a(this.f35020a);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.h(this.f35020a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f35020a);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.h(this.f35020a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.a(this.f35020a);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.h(this.f35020a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.h(this.f35020a);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j4, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.a(this.f35020a);
            try {
                return super.tryLock(j4, timeUnit);
            } finally {
                CycleDetectingLockFactory.h(this.f35020a);
            }
        }
    }
}
