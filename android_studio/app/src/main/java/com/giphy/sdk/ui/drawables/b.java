package com.giphy.sdk.ui.drawables;

import com.giphy.sdk.core.models.enums.RenditionType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: GifStepMapping.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002R'\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000e\u0010\fR'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\n\u001a\u0004\b\u0010\u0010\fR'\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0007j\b\u0012\u0004\u0012\u00020\u0005`\b8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\n\u001a\u0004\b\t\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/ui/drawables/b;", "", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "targetRendition", "", "Lcom/giphy/sdk/ui/drawables/c;", "e", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "a", "Ljava/util/ArrayList;", "c", "()Ljava/util/ArrayList;", "FIXED_WIDTH_STEPS", "b", "FIXED_HEIGHT_STEPS", "d", "FIXED_WIDTH_THEN_ORIGINAL_STEPS", "EMOJI_STEPS", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final ArrayList<c> f17044a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final ArrayList<c> f17045b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private static final ArrayList<c> f17046c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private static final ArrayList<c> f17047d;
    @g

    /* renamed from: e  reason: collision with root package name */
    public static final b f17048e = new b();

    static {
        ArrayList<c> arrayListOf;
        ArrayList<c> arrayListOf2;
        ArrayList<c> arrayListOf3;
        ArrayList<c> arrayListOf4;
        RenditionType renditionType = RenditionType.fixedWidth;
        GifStepAction gifStepAction = GifStepAction.TERMINATE;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new c(renditionType, false, gifStepAction));
        f17044a = arrayListOf;
        arrayListOf2 = CollectionsKt__CollectionsKt.arrayListOf(new c(RenditionType.fixedHeight, false, gifStepAction));
        f17045b = arrayListOf2;
        arrayListOf3 = CollectionsKt__CollectionsKt.arrayListOf(new c(renditionType, false, GifStepAction.NEXT), new c(RenditionType.original, false, gifStepAction));
        f17046c = arrayListOf3;
        arrayListOf4 = CollectionsKt__CollectionsKt.arrayListOf(new c(RenditionType.fixedWidthSmall, false, gifStepAction));
        f17047d = arrayListOf4;
    }

    private b() {
    }

    @g
    public final ArrayList<c> a() {
        return f17047d;
    }

    @g
    public final ArrayList<c> b() {
        return f17045b;
    }

    @g
    public final ArrayList<c> c() {
        return f17044a;
    }

    @g
    public final ArrayList<c> d() {
        return f17046c;
    }

    @g
    public final List<c> e(@g RenditionType targetRendition) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(targetRendition, "targetRendition");
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new c(RenditionType.fixedWidth, false, GifStepAction.NEXT), new c(targetRendition, false, GifStepAction.TERMINATE));
        return arrayListOf;
    }
}
