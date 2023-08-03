package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.b(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class HashMultimap<K, V> extends g2<K, V> {

    /* renamed from: k  reason: collision with root package name */
    private static final int f32694k = 2;
    @h3.c

    /* renamed from: l  reason: collision with root package name */
    private static final long f32695l = 0;
    @h3.d

    /* renamed from: j  reason: collision with root package name */
    transient int f32696j;

    private HashMultimap() {
        this(12, 2);
    }

    @h3.c
    private void H(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32696j = 2;
        int h4 = m4.h(objectInputStream);
        B(u3.c(12));
        m4.e(this, objectInputStream, h4);
    }

    @h3.c
    private void I(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        m4.j(this, objectOutputStream);
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.m, com.google.common.collect.e
    /* renamed from: F */
    public Set<V> s() {
        return u3.d(this.f32696j);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsKey(@NullableDecl Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean containsValue(@NullableDecl Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return super.get((HashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ k3 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean put(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(h3 h3Var) {
        return super.putAll(h3Var);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set removeAll(@NullableDecl Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3, com.google.common.collect.a3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return super.replaceValues((HashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.h
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.e, com.google.common.collect.h, com.google.common.collect.h3
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    private HashMultimap(int i4, int i10) {
        super(u3.c(i4));
        this.f32696j = 2;
        com.google.common.base.a0.d(i10 >= 0);
        this.f32696j = i10;
    }

    public static <K, V> HashMultimap<K, V> create(int i4, int i10) {
        return new HashMultimap<>(i4, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.h, com.google.common.collect.h3
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ boolean putAll(@NullableDecl Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K, V> HashMultimap<K, V> create(h3<? extends K, ? extends V> h3Var) {
        return new HashMultimap<>(h3Var);
    }

    private HashMultimap(h3<? extends K, ? extends V> h3Var) {
        super(u3.c(h3Var.keySet().size()));
        this.f32696j = 2;
        putAll(h3Var);
    }
}
