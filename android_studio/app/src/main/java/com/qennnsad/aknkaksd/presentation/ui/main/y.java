package com.qennnsad.aknkaksd.presentation.ui.main;

import android.content.Context;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.module.rank.h;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: RankFlavourControler.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006R\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/y;", "", "", "", "e", "()[Ljava/lang/String;", "", "rankRoot", "a", "c", "b", "rootPosition", "listPosition", "Lcom/qennnsad/aknkaksd/presentation/module/rank/h;", "d", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Lg5/a;", "localDataManager", "<init>", "(Landroid/content/Context;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class y {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f53257a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f53258b;

    @u7.a
    public y(@m8.g Context context, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f53257a = context;
        this.f53258b = localDataManager;
    }

    public final int a(int i4) {
        return (i4 == 0 || i4 == 1) ? R.drawable.bg_rank_0 : i4 == 2 ? R.drawable.bg_rank_1 : i4 == c() - 1 ? R.drawable.bg_rank_3 : R.color.white;
    }

    public final int b() {
        int c10 = c();
        return this.f53258b.H() ? c10 - 2 : c10 - 1;
    }

    public final int c() {
        return this.f53258b.H() ? 5 : 4;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.presentation.module.rank.h d(int i4, int i10) {
        int b10 = b();
        if (i4 == 0) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return new h.a(null, 1, null);
                    }
                    return new h.b(null, 1, null);
                }
                return new h.d(null, 1, null);
            }
            return new h.c(null, 1, null);
        } else if (i4 == 1) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return new h.a(2);
                    }
                    return new h.b(2);
                }
                return new h.d(2);
            }
            return new h.c(2);
        } else if (i4 == 2) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return new h.m();
                    }
                    return new h.n();
                }
                return new h.p();
            }
            return new h.o();
        } else if (i4 == b10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return new h.e();
                    }
                    return new h.f();
                }
                return new h.C0428h();
            }
            return new h.g();
        } else if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return new h.i();
                }
                return new h.j();
            }
            return new h.l();
        } else {
            return new h.k();
        }
    }

    @m8.g
    public final String[] e() {
        String[] it = this.f53257a.getResources().getStringArray(R.array.rank_page_type_titles);
        if (this.f53258b.H()) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return it;
        }
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Object[] array = ArraysKt.slice((Object[]) it, new IntRange(0, it.length - 2)).toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }
}
