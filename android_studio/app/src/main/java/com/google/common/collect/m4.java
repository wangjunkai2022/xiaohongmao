package com.google.common.collect;

import com.google.common.collect.k3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Map;

/* compiled from: Serialization.java */
@h3.c
/* loaded from: classes2.dex */
final class m4 {

    /* compiled from: Serialization.java */
    /* loaded from: classes2.dex */
    static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Field f33745a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(T t9, int i4) {
            try {
                this.f33745a.set(t9, Integer.valueOf(i4));
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(T t9, Object obj) {
            try {
                this.f33745a.set(t9, obj);
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            }
        }

        private b(Field field) {
            this.f33745a = field;
            field.setAccessible(true);
        }
    }

    private m4() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b<T> a(Class<T> cls, String str) {
        try {
            return new b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void b(Map<K, V> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void c(Map<K, V> map, ObjectInputStream objectInputStream, int i4) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i4; i10++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void d(h3<K, V> h3Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        e(h3Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void e(h3<K, V> h3Var, ObjectInputStream objectInputStream, int i4) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i4; i10++) {
            Collection collection = h3Var.get(objectInputStream.readObject());
            int readInt = objectInputStream.readInt();
            for (int i11 = 0; i11 < readInt; i11++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void f(k3<E> k3Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        g(k3Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void g(k3<E> k3Var, ObjectInputStream objectInputStream, int i4) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i4; i10++) {
            k3Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void i(Map<K, V> map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void j(h3<K, V> h3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(h3Var.asMap().size());
        for (Map.Entry<K, Collection<V>> entry : h3Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            for (V v9 : entry.getValue()) {
                objectOutputStream.writeObject(v9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void k(k3<E> k3Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(k3Var.entrySet().size());
        for (k3.a<E> aVar : k3Var.entrySet()) {
            objectOutputStream.writeObject(aVar.getElement());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
