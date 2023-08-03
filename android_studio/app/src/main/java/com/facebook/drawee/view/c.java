package com.facebook.drawee.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.PointF;
import android.graphics.Rect;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.view.ViewGroup;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: DraweeTransition.java */
@TargetApi(19)
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c extends Transition {

    /* renamed from: e  reason: collision with root package name */
    private static final String f11652e = "draweeTransition:bounds";

    /* renamed from: a  reason: collision with root package name */
    private final s.c f11653a;

    /* renamed from: b  reason: collision with root package name */
    private final s.c f11654b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final PointF f11655c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private final PointF f11656d;

    /* compiled from: DraweeTransition.java */
    /* loaded from: classes.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s.b f11657a;

        a(final s.b val$scaleType) {
            this.f11657a = val$scaleType;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            this.f11657a.i(((Float) animation.getAnimatedValue()).floatValue());
        }
    }

    /* compiled from: DraweeTransition.java */
    /* loaded from: classes.dex */
    class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GenericDraweeView f11659a;

        b(final GenericDraweeView val$draweeView) {
            this.f11659a = val$draweeView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            this.f11659a.getHierarchy().z(c.this.f11654b);
            if (c.this.f11656d != null) {
                this.f11659a.getHierarchy().y(c.this.f11656d);
            }
        }
    }

    public c(s.c fromScale, s.c toScale, @h PointF fromFocusPoint, @h PointF toFocusPoint) {
        this.f11653a = fromScale;
        this.f11654b = toScale;
        this.f11655c = fromFocusPoint;
        this.f11656d = toFocusPoint;
    }

    private void c(TransitionValues transitionValues) {
        if (transitionValues.view instanceof GenericDraweeView) {
            transitionValues.values.put(f11652e, new Rect(0, 0, transitionValues.view.getWidth(), transitionValues.view.getHeight()));
        }
    }

    public static TransitionSet d(s.c fromScale, s.c toScale) {
        return e(fromScale, toScale, null, null);
    }

    public static TransitionSet e(s.c fromScale, s.c toScale, @h PointF fromFocusPoint, @h PointF toFocusPoint) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new ChangeBounds());
        transitionSet.addTransition(new c(fromScale, toScale, fromFocusPoint, toFocusPoint));
        return transitionSet;
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    @h
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (startValues != null && endValues != null) {
            Rect rect = (Rect) startValues.values.get(f11652e);
            Rect rect2 = (Rect) endValues.values.get(f11652e);
            if (rect != null && rect2 != null) {
                s.c cVar = this.f11653a;
                s.c cVar2 = this.f11654b;
                if (cVar == cVar2 && this.f11655c == this.f11656d) {
                    return null;
                }
                GenericDraweeView genericDraweeView = (GenericDraweeView) startValues.view;
                s.b bVar = new s.b(cVar, cVar2, rect, rect2, this.f11655c, this.f11656d);
                genericDraweeView.getHierarchy().z(bVar);
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new a(bVar));
                ofFloat.addListener(new b(genericDraweeView));
                return ofFloat;
            }
        }
        return null;
    }

    public c(s.c fromScale, s.c toScale) {
        this(fromScale, toScale, null, null);
    }
}
