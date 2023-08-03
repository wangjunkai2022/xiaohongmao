.class public final synthetic Lcom/google/android/exoplayer2/ui/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/p0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/g0;->a:Lcom/google/android/exoplayer2/ui/p0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/g0;->a:Lcom/google/android/exoplayer2/ui/p0;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ui/p0;->g(Lcom/google/android/exoplayer2/ui/p0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
