package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.a;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<q0> f26093a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f26094b;

    /* renamed from: c  reason: collision with root package name */
    private int f26095c;

    /* renamed from: d  reason: collision with root package name */
    private float f26096d;

    /* renamed from: e  reason: collision with root package name */
    private e f26097e;

    /* renamed from: f  reason: collision with root package name */
    private float f26098f;

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }

    private static com.google.android.exoplayer2.text.a b(com.google.android.exoplayer2.text.a aVar) {
        a.c B = aVar.a().w(-3.4028235E38f).x(Integer.MIN_VALUE).B(null);
        if (aVar.f25318f == 0) {
            B.t(1.0f - aVar.f25317e, 0);
        } else {
            B.t((-aVar.f25317e) - 1.0f, 1);
        }
        int i4 = aVar.f25319g;
        if (i4 == 0) {
            B.u(2);
        } else if (i4 == 2) {
            B.u(0);
        }
        return B.a();
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<com.google.android.exoplayer2.text.a> list, e eVar, float f10, int i4, float f11) {
        this.f26094b = list;
        this.f26097e = eVar;
        this.f26096d = f10;
        this.f26095c = i4;
        this.f26098f = f11;
        while (this.f26093a.size() < list.size()) {
            this.f26093a.add(new q0(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List<com.google.android.exoplayer2.text.a> list = this.f26094b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i4 = paddingBottom - paddingTop;
        float h4 = t0.h(this.f26095c, this.f26096d, height, i4);
        if (h4 <= 0.0f) {
            return;
        }
        int size = list.size();
        int i10 = 0;
        while (i10 < size) {
            com.google.android.exoplayer2.text.a aVar = list.get(i10);
            if (aVar.f25328p != Integer.MIN_VALUE) {
                aVar = b(aVar);
            }
            com.google.android.exoplayer2.text.a aVar2 = aVar;
            int i11 = paddingBottom;
            this.f26093a.get(i10).b(aVar2, this.f26097e, h4, t0.h(aVar2.f25326n, aVar2.f25327o, height, i4), this.f26098f, canvas, paddingLeft, paddingTop, width, i11);
            i10++;
            size = size;
            i4 = i4;
            paddingBottom = i11;
            width = width;
        }
    }

    public CanvasSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26093a = new ArrayList();
        this.f26094b = Collections.emptyList();
        this.f26095c = 0;
        this.f26096d = 0.0533f;
        this.f26097e = e.f26359m;
        this.f26098f = 0.08f;
    }
}
