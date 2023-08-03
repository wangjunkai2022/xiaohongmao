package iamutkarshtiwari.github.io.ananas.editimage.fragment.crop;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.h;

/* compiled from: RatioText.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0014"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;", "", "", "a", "b", "aspectX", "aspectY", "c", "", "toString", "hashCode", "other", "", "equals", "I", "e", "()I", "f", "<init>", "(II)V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final int f69386a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69387b;

    public a() {
        this(0, 0, 3, null);
    }

    public a(int i4, int i10) {
        this.f69386a = i4;
        this.f69387b = i10;
    }

    public static /* synthetic */ a d(a aVar, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = aVar.f69386a;
        }
        if ((i11 & 2) != 0) {
            i10 = aVar.f69387b;
        }
        return aVar.c(i4, i10);
    }

    public final int a() {
        return this.f69386a;
    }

    public final int b() {
        return this.f69387b;
    }

    @m8.g
    public final a c(int i4, int i10) {
        return new a(i4, i10);
    }

    public final int e() {
        return this.f69386a;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.f69386a == aVar.f69386a && this.f69387b == aVar.f69387b;
        }
        return false;
    }

    public final int f() {
        return this.f69387b;
    }

    public int hashCode() {
        return (this.f69386a * 31) + this.f69387b;
    }

    @m8.g
    public String toString() {
        return "AspectRatio(aspectX=" + this.f69386a + ", aspectY=" + this.f69387b + ')';
    }

    public /* synthetic */ a(int i4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i4, (i11 & 2) != 0 ? 0 : i10);
    }
}
