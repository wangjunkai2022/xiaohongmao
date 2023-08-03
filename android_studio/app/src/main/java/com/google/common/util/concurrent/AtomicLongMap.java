package com.google.common.util.concurrent;

import com.google.common.collect.f3;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

@h3.b
/* loaded from: classes2.dex */
public final class AtomicLongMap<K> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<K, AtomicLong> f35003a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient Map<K, Long> f35004b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements com.google.common.base.q<AtomicLong, Long> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public Long apply(AtomicLong atomicLong) {
            return Long.valueOf(atomicLong.get());
        }
    }

    private AtomicLongMap(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        this.f35003a = (ConcurrentHashMap) com.google.common.base.a0.E(concurrentHashMap);
    }

    private Map<K, Long> a() {
        return Collections.unmodifiableMap(f3.B0(this.f35003a, new a()));
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    @CanIgnoreReturnValue
    public long addAndGet(K k10, long j4) {
        AtomicLong atomicLong;
        do {
            atomicLong = this.f35003a.get(k10);
            if (atomicLong == null && (atomicLong = this.f35003a.putIfAbsent(k10, new AtomicLong(j4))) == null) {
                return j4;
            }
            while (true) {
                long j10 = atomicLong.get();
                if (j10 == 0) {
                    break;
                }
                long j11 = j10 + j4;
                if (atomicLong.compareAndSet(j10, j11)) {
                    return j11;
                }
            }
        } while (!this.f35003a.replace(k10, atomicLong, new AtomicLong(j4)));
        return j4;
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.f35004b;
        if (map == null) {
            Map<K, Long> a10 = a();
            this.f35004b = a10;
            return a10;
        }
        return map;
    }

    long b(K k10, long j4) {
        AtomicLong atomicLong;
        do {
            atomicLong = this.f35003a.get(k10);
            if (atomicLong == null && (atomicLong = this.f35003a.putIfAbsent(k10, new AtomicLong(j4))) == null) {
                return 0L;
            }
            long j10 = atomicLong.get();
            if (j10 != 0) {
                return j10;
            }
        } while (!this.f35003a.replace(k10, atomicLong, new AtomicLong(j4)));
        return 0L;
    }

    boolean c(K k10, long j4) {
        AtomicLong atomicLong = this.f35003a.get(k10);
        if (atomicLong == null) {
            return false;
        }
        long j10 = atomicLong.get();
        if (j10 != j4) {
            return false;
        }
        if (j10 == 0 || atomicLong.compareAndSet(j10, 0L)) {
            this.f35003a.remove(k10, atomicLong);
            return true;
        }
        return false;
    }

    public void clear() {
        this.f35003a.clear();
    }

    public boolean containsKey(Object obj) {
        return this.f35003a.containsKey(obj);
    }

    boolean d(K k10, long j4, long j10) {
        if (j4 == 0) {
            return b(k10, j10) == 0;
        }
        AtomicLong atomicLong = this.f35003a.get(k10);
        if (atomicLong == null) {
            return false;
        }
        return atomicLong.compareAndSet(j4, j10);
    }

    @CanIgnoreReturnValue
    public long decrementAndGet(K k10) {
        return addAndGet(k10, -1L);
    }

    public long get(K k10) {
        AtomicLong atomicLong = this.f35003a.get(k10);
        if (atomicLong == null) {
            return 0L;
        }
        return atomicLong.get();
    }

    @CanIgnoreReturnValue
    public long getAndAdd(K k10, long j4) {
        AtomicLong atomicLong;
        do {
            atomicLong = this.f35003a.get(k10);
            if (atomicLong == null && (atomicLong = this.f35003a.putIfAbsent(k10, new AtomicLong(j4))) == null) {
                return 0L;
            }
            while (true) {
                long j10 = atomicLong.get();
                if (j10 == 0) {
                    break;
                } else if (atomicLong.compareAndSet(j10, j10 + j4)) {
                    return j10;
                }
            }
        } while (!this.f35003a.replace(k10, atomicLong, new AtomicLong(j4)));
        return 0L;
    }

    @CanIgnoreReturnValue
    public long getAndDecrement(K k10) {
        return getAndAdd(k10, -1L);
    }

    @CanIgnoreReturnValue
    public long getAndIncrement(K k10) {
        return getAndAdd(k10, 1L);
    }

    @CanIgnoreReturnValue
    public long incrementAndGet(K k10) {
        return addAndGet(k10, 1L);
    }

    public boolean isEmpty() {
        return this.f35003a.isEmpty();
    }

    @CanIgnoreReturnValue
    public long put(K k10, long j4) {
        AtomicLong atomicLong;
        do {
            atomicLong = this.f35003a.get(k10);
            if (atomicLong == null && (atomicLong = this.f35003a.putIfAbsent(k10, new AtomicLong(j4))) == null) {
                return 0L;
            }
            while (true) {
                long j10 = atomicLong.get();
                if (j10 == 0) {
                    break;
                } else if (atomicLong.compareAndSet(j10, j4)) {
                    return j10;
                }
            }
        } while (!this.f35003a.replace(k10, atomicLong, new AtomicLong(j4)));
        return 0L;
    }

    public void putAll(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue().longValue());
        }
    }

    @CanIgnoreReturnValue
    public long remove(K k10) {
        long j4;
        AtomicLong atomicLong = this.f35003a.get(k10);
        if (atomicLong == null) {
            return 0L;
        }
        do {
            j4 = atomicLong.get();
            if (j4 == 0) {
                break;
            }
        } while (!atomicLong.compareAndSet(j4, 0L));
        this.f35003a.remove(k10, atomicLong);
        return j4;
    }

    public void removeAllZeros() {
        Iterator<Map.Entry<K, AtomicLong>> it = this.f35003a.entrySet().iterator();
        while (it.hasNext()) {
            AtomicLong value = it.next().getValue();
            if (value != null && value.get() == 0) {
                it.remove();
            }
        }
    }

    @CanIgnoreReturnValue
    @h3.a
    public boolean removeIfZero(K k10) {
        return c(k10, 0L);
    }

    public int size() {
        return this.f35003a.size();
    }

    public long sum() {
        long j4 = 0;
        for (AtomicLong atomicLong : this.f35003a.values()) {
            j4 += atomicLong.get();
        }
        return j4;
    }

    public String toString() {
        return this.f35003a.toString();
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> create = create();
        create.putAll(map);
        return create;
    }
}
