package com.tangxiaolv.telegramgallery.Components;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.tangxiaolv.telegramgallery.q;
import com.tangxiaolv.telegramgallery.r;

/* compiled from: PhotoPickerPhotoCell.java */
/* loaded from: classes3.dex */
public class f extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public BackupImageView f56202a;

    /* renamed from: b  reason: collision with root package name */
    public FrameLayout f56203b;

    /* renamed from: c  reason: collision with root package name */
    public com.tangxiaolv.telegramgallery.Components.b f56204c;

    /* renamed from: d  reason: collision with root package name */
    private AnimatorSet f56205d;

    /* renamed from: e  reason: collision with root package name */
    public int f56206e;

    /* compiled from: PhotoPickerPhotoCell.java */
    /* loaded from: classes3.dex */
    class a extends com.tangxiaolv.telegramgallery.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f56207a;

        a(boolean z9) {
            this.f56207a = z9;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (f.this.f56205d == null || !f.this.f56205d.equals(animator)) {
                return;
            }
            f.this.f56205d = null;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (f.this.f56205d == null || !f.this.f56205d.equals(animator)) {
                return;
            }
            f.this.f56205d = null;
            if (this.f56207a) {
                return;
            }
            f.this.setBackgroundColor(0);
        }
    }

    /* compiled from: PhotoPickerPhotoCell.java */
    /* loaded from: classes3.dex */
    class b extends com.tangxiaolv.telegramgallery.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f56209a;

        b(boolean z9) {
            this.f56209a = z9;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (f.this.f56205d == null || !f.this.f56205d.equals(animator)) {
                return;
            }
            f.this.f56205d = null;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (f.this.f56205d == null || !f.this.f56205d.equals(animator)) {
                return;
            }
            f.this.f56205d = null;
            if (this.f56209a) {
                return;
            }
            f.this.setBackgroundColor(0);
        }
    }

    public f(Context context) {
        super(context);
        BackupImageView backupImageView = new BackupImageView(context);
        this.f56202a = backupImageView;
        addView(backupImageView, com.tangxiaolv.telegramgallery.Utils.f.a(-1, -1.0f));
        FrameLayout frameLayout = new FrameLayout(context);
        this.f56203b = frameLayout;
        addView(frameLayout, com.tangxiaolv.telegramgallery.Utils.f.c(42, 42, 53));
        com.tangxiaolv.telegramgallery.Components.b bVar = new com.tangxiaolv.telegramgallery.Components.b(context, q.h.S0, -1);
        this.f56204c = bVar;
        bVar.setSize(24);
        this.f56204c.setCheckOffset(com.tangxiaolv.telegramgallery.Utils.a.g(1.0f));
        this.f56204c.setDrawBackground(true);
        this.f56204c.setColor(r.d(context));
        addView(this.f56204c, com.tangxiaolv.telegramgallery.Utils.f.b(24, 24.0f, 53, 0.0f, 4.0f, 4.0f, 0.0f));
    }

    public void c(int i4, boolean z9, boolean z10) {
        this.f56204c.d(i4, z9, z10);
        AnimatorSet animatorSet = this.f56205d;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f56205d = null;
        }
        if (z10) {
            if (z9) {
                setBackgroundColor(-16119286);
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f56205d = animatorSet2;
            Animator[] animatorArr = new Animator[2];
            BackupImageView backupImageView = this.f56202a;
            float[] fArr = new float[1];
            fArr[0] = z9 ? 0.85f : 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(backupImageView, "scaleX", fArr);
            BackupImageView backupImageView2 = this.f56202a;
            float[] fArr2 = new float[1];
            fArr2[0] = z9 ? 0.85f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(backupImageView2, "scaleY", fArr2);
            animatorSet2.playTogether(animatorArr);
            this.f56205d.setDuration(200L);
            this.f56205d.addListener(new b(z9));
            this.f56205d.start();
            return;
        }
        setBackgroundColor(z9 ? -16119286 : 0);
        this.f56202a.setScaleX(z9 ? 0.85f : 1.0f);
        this.f56202a.setScaleY(z9 ? 0.85f : 1.0f);
    }

    public void d(boolean z9, boolean z10) {
        this.f56204c.e(z9, z10);
        AnimatorSet animatorSet = this.f56205d;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f56205d = null;
        }
        if (z10) {
            if (z9) {
                setBackgroundColor(-16119286);
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f56205d = animatorSet2;
            Animator[] animatorArr = new Animator[2];
            BackupImageView backupImageView = this.f56202a;
            float[] fArr = new float[1];
            fArr[0] = z9 ? 0.85f : 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(backupImageView, "scaleX", fArr);
            BackupImageView backupImageView2 = this.f56202a;
            float[] fArr2 = new float[1];
            fArr2[0] = z9 ? 0.85f : 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(backupImageView2, "scaleY", fArr2);
            animatorSet2.playTogether(animatorArr);
            this.f56205d.setDuration(200L);
            this.f56205d.addListener(new a(z9));
            this.f56205d.start();
            return;
        }
        setBackgroundColor(z9 ? -16119286 : 0);
        this.f56202a.setScaleX(z9 ? 0.85f : 1.0f);
        this.f56202a.setScaleY(z9 ? 0.85f : 1.0f);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f56206e, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f56206e, 1073741824));
    }
}
