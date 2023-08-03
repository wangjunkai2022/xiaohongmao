package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.annotation.AnimRes;
import androidx.annotation.NonNull;
import androidx.core.view.OneShotPreDrawListener;
import androidx.fragment.R;

/* loaded from: classes.dex */
class FragmentAnim {
    private FragmentAnim() {
    }

    @AnimRes
    private static int getNextAnim(Fragment fragment, boolean z9, boolean z10) {
        if (z10) {
            if (z9) {
                return fragment.getPopEnterAnim();
            }
            return fragment.getPopExitAnim();
        } else if (z9) {
            return fragment.getEnterAnim();
        } else {
            return fragment.getExitAnim();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AnimationOrAnimator loadAnimation(@NonNull Context context, @NonNull Fragment fragment, boolean z9, boolean z10) {
        int nextTransition = fragment.getNextTransition();
        int nextAnim = getNextAnim(fragment, z9, z10);
        boolean z11 = false;
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i4 = R.id.visible_removing_fragment_view_tag;
            if (viewGroup.getTag(i4) != null) {
                fragment.mContainer.setTag(i4, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z9, nextAnim);
            if (onCreateAnimation != null) {
                return new AnimationOrAnimator(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z9, nextAnim);
            if (onCreateAnimator != null) {
                return new AnimationOrAnimator(onCreateAnimator);
            }
            if (nextAnim == 0 && nextTransition != 0) {
                nextAnim = transitToAnimResourceId(context, nextTransition, z9);
            }
            if (nextAnim != 0) {
                boolean equals = "anim".equals(context.getResources().getResourceTypeName(nextAnim));
                if (equals) {
                    try {
                        Animation loadAnimation = AnimationUtils.loadAnimation(context, nextAnim);
                        if (loadAnimation != null) {
                            return new AnimationOrAnimator(loadAnimation);
                        }
                        z11 = true;
                    } catch (Resources.NotFoundException e4) {
                        throw e4;
                    } catch (RuntimeException unused) {
                    }
                }
                if (!z11) {
                    try {
                        Animator loadAnimator = AnimatorInflater.loadAnimator(context, nextAnim);
                        if (loadAnimator != null) {
                            return new AnimationOrAnimator(loadAnimator);
                        }
                    } catch (RuntimeException e10) {
                        if (!equals) {
                            Animation loadAnimation2 = AnimationUtils.loadAnimation(context, nextAnim);
                            if (loadAnimation2 != null) {
                                return new AnimationOrAnimator(loadAnimation2);
                            }
                        } else {
                            throw e10;
                        }
                    }
                }
            }
            return null;
        }
        return null;
    }

    @AnimRes
    private static int toActivityTransitResId(@NonNull Context context, int i4) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(16973825, new int[]{i4});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @AnimRes
    private static int transitToAnimResourceId(@NonNull Context context, int i4, boolean z9) {
        if (i4 == 4097) {
            return z9 ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
        } else if (i4 == 8194) {
            return z9 ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
        } else if (i4 == 8197) {
            if (z9) {
                return toActivityTransitResId(context, 16842938);
            }
            return toActivityTransitResId(context, 16842939);
        } else if (i4 == 4099) {
            return z9 ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
        } else if (i4 != 4100) {
            return -1;
        } else {
            if (z9) {
                return toActivityTransitResId(context, 16842936);
            }
            return toActivityTransitResId(context, 16842937);
        }
    }

    /* loaded from: classes.dex */
    static class AnimationOrAnimator {
        public final Animation animation;
        public final Animator animator;

        AnimationOrAnimator(Animation animation) {
            this.animation = animation;
            this.animator = null;
            if (animation == null) {
                throw new IllegalStateException("Animation cannot be null");
            }
        }

        AnimationOrAnimator(Animator animator) {
            this.animation = null;
            this.animator = animator;
            if (animator == null) {
                throw new IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* loaded from: classes.dex */
    static class EndViewTransitionAnimation extends AnimationSet implements Runnable {
        private boolean mAnimating;
        private final View mChild;
        private boolean mEnded;
        private final ViewGroup mParent;
        private boolean mTransitionEnded;

        /* JADX INFO: Access modifiers changed from: package-private */
        public EndViewTransitionAnimation(@NonNull Animation animation, @NonNull ViewGroup viewGroup, @NonNull View view) {
            super(false);
            this.mAnimating = true;
            this.mParent = viewGroup;
            this.mChild = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j4, @NonNull Transformation transformation) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j4, transformation)) {
                this.mEnded = true;
                OneShotPreDrawListener.add(this.mParent, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.mEnded && this.mAnimating) {
                this.mAnimating = false;
                this.mParent.post(this);
                return;
            }
            this.mParent.endViewTransition(this.mChild);
            this.mTransitionEnded = true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j4, @NonNull Transformation transformation, float f10) {
            this.mAnimating = true;
            if (this.mEnded) {
                return !this.mTransitionEnded;
            }
            if (!super.getTransformation(j4, transformation, f10)) {
                this.mEnded = true;
                OneShotPreDrawListener.add(this.mParent, this);
            }
            return true;
        }
    }
}
