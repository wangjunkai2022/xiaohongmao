.class Lcom/airbnb/lottie/h$h;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/h;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/h;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/h$h;->a:Lcom/airbnb/lottie/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/airbnb/lottie/h$h;->a:Lcom/airbnb/lottie/h;

    invoke-static {p1}, Lcom/airbnb/lottie/h;->a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/h$h;->a:Lcom/airbnb/lottie/h;

    invoke-static {p1}, Lcom/airbnb/lottie/h;->a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/b;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/h$h;->a:Lcom/airbnb/lottie/h;

    invoke-static {v0}, Lcom/airbnb/lottie/h;->b(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/utils/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->h()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->E(F)V

    :cond_0
    return-void
.end method
