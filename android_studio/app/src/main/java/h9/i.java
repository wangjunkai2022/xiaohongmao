package h9;

import java.util.Comparator;
import shaded.org.apache.commons.codec.EncoderException;

/* compiled from: StringEncoderComparator.java */
/* loaded from: classes5.dex */
public class i implements Comparator {

    /* renamed from: a  reason: collision with root package name */
    private final h f69075a;

    @Deprecated
    public i() {
        this.f69075a = null;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        try {
            return ((Comparable) this.f69075a.a(obj)).compareTo((Comparable) this.f69075a.a(obj2));
        } catch (EncoderException unused) {
            return 0;
        }
    }

    public i(h hVar) {
        this.f69075a = hVar;
    }
}
