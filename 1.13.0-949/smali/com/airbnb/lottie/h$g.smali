.class Lcom/airbnb/lottie/h$g;
.super Lcom/airbnb/lottie/value/j;
.source "LottieDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/h;->f(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/value/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/airbnb/lottie/value/l;

.field final synthetic e:Lcom/airbnb/lottie/h;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/value/l;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/h$g;->e:Lcom/airbnb/lottie/h;

    iput-object p2, p0, Lcom/airbnb/lottie/h$g;->d:Lcom/airbnb/lottie/value/l;

    invoke-direct {p0}, Lcom/airbnb/lottie/value/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/value/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/value/b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h$g;->d:Lcom/airbnb/lottie/value/l;

    invoke-interface {v0, p1}, Lcom/airbnb/lottie/value/l;->a(Lcom/airbnb/lottie/value/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
