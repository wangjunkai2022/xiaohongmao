package com.giphy.sdk.ui.drawables;

import com.giphy.sdk.core.models.enums.RenditionType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: LoadStep.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\t\u0010\u000bR\u0017\u0010\u0010\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u000e\u001a\u0004\b\u0003\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/ui/drawables/c;", "", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "a", "Lcom/giphy/sdk/core/models/enums/RenditionType;", "c", "()Lcom/giphy/sdk/core/models/enums/RenditionType;", "type", "", "b", "Z", "()Z", "onlyCached", "Lcom/giphy/sdk/ui/drawables/GifStepAction;", "Lcom/giphy/sdk/ui/drawables/GifStepAction;", "()Lcom/giphy/sdk/ui/drawables/GifStepAction;", "actionIfLoaded", "<init>", "(Lcom/giphy/sdk/core/models/enums/RenditionType;ZLcom/giphy/sdk/ui/drawables/GifStepAction;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class c {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final RenditionType f17049a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f17050b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final GifStepAction f17051c;

    public c(@g RenditionType type, boolean z9, @g GifStepAction actionIfLoaded) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(actionIfLoaded, "actionIfLoaded");
        this.f17049a = type;
        this.f17050b = z9;
        this.f17051c = actionIfLoaded;
    }

    @g
    public final GifStepAction a() {
        return this.f17051c;
    }

    public final boolean b() {
        return this.f17050b;
    }

    @g
    public final RenditionType c() {
        return this.f17049a;
    }
}
