.class Lcom/airbnb/lottie/g$k;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/g;->b(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/airbnb/lottie/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/airbnb/lottie/n<",
        "Lcom/airbnb/lottie/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/f;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/g$k;->a:Lcom/airbnb/lottie/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/n<",
            "Lcom/airbnb/lottie/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/n;

    iget-object v1, p0, Lcom/airbnb/lottie/g$k;->a:Lcom/airbnb/lottie/f;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/g$k;->a()Lcom/airbnb/lottie/n;

    move-result-object v0

    return-object v0
.end method
