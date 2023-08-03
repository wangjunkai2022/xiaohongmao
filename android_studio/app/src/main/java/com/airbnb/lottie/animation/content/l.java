package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: MergePathsContent.java */
@TargetApi(19)
/* loaded from: classes.dex */
public class l implements n, j {

    /* renamed from: d  reason: collision with root package name */
    private final String f4142d;

    /* renamed from: f  reason: collision with root package name */
    private final MergePaths f4144f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4139a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f4140b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f4141c = new Path();

    /* renamed from: e  reason: collision with root package name */
    private final List<n> f4143e = new ArrayList();

    /* compiled from: MergePathsContent.java */
    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4145a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f4145a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4145a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4145a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4145a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4145a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f4142d = mergePaths.c();
        this.f4144f = mergePaths;
    }

    private void a() {
        for (int i4 = 0; i4 < this.f4143e.size(); i4++) {
            this.f4141c.addPath(this.f4143e.get(i4).getPath());
        }
    }

    @TargetApi(19)
    private void c(Path.Op op) {
        this.f4140b.reset();
        this.f4139a.reset();
        for (int size = this.f4143e.size() - 1; size >= 1; size--) {
            n nVar = this.f4143e.get(size);
            if (nVar instanceof d) {
                d dVar = (d) nVar;
                List<n> i4 = dVar.i();
                for (int size2 = i4.size() - 1; size2 >= 0; size2--) {
                    Path path = i4.get(size2).getPath();
                    path.transform(dVar.j());
                    this.f4140b.addPath(path);
                }
            } else {
                this.f4140b.addPath(nVar.getPath());
            }
        }
        n nVar2 = this.f4143e.get(0);
        if (nVar2 instanceof d) {
            d dVar2 = (d) nVar2;
            List<n> i10 = dVar2.i();
            for (int i11 = 0; i11 < i10.size(); i11++) {
                Path path2 = i10.get(i11).getPath();
                path2.transform(dVar2.j());
                this.f4139a.addPath(path2);
            }
        } else {
            this.f4139a.set(nVar2.getPath());
        }
        this.f4141c.op(this.f4139a, this.f4140b, op);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < this.f4143e.size(); i4++) {
            this.f4143e.get(i4).b(list, list2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.j
    public void f(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c previous = listIterator.previous();
            if (previous instanceof n) {
                this.f4143e.add((n) previous);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4142d;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        this.f4141c.reset();
        if (this.f4144f.d()) {
            return this.f4141c;
        }
        int i4 = a.f4145a[this.f4144f.b().ordinal()];
        if (i4 == 1) {
            a();
        } else if (i4 == 2) {
            c(Path.Op.UNION);
        } else if (i4 == 3) {
            c(Path.Op.REVERSE_DIFFERENCE);
        } else if (i4 == 4) {
            c(Path.Op.INTERSECT);
        } else if (i4 == 5) {
            c(Path.Op.XOR);
        }
        return this.f4141c;
    }
}
