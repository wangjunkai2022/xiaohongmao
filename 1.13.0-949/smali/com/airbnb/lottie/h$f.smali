.class Lcom/airbnb/lottie/h$f;
.super Ljava/lang/Object;
.source "LottieDrawable.java"

# interfaces
.implements Lcom/airbnb/lottie/h$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/h;->e(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/model/d;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/airbnb/lottie/value/j;

.field final synthetic d:Lcom/airbnb/lottie/h;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/h$f;->d:Lcom/airbnb/lottie/h;

    iput-object p2, p0, Lcom/airbnb/lottie/h$f;->a:Lcom/airbnb/lottie/model/d;

    iput-object p3, p0, Lcom/airbnb/lottie/h$f;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/h$f;->c:Lcom/airbnb/lottie/value/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;)V
    .locals 3

    iget-object p1, p0, Lcom/airbnb/lottie/h$f;->d:Lcom/airbnb/lottie/h;

    iget-object v0, p0, Lcom/airbnb/lottie/h$f;->a:Lcom/airbnb/lottie/model/d;

    iget-object v1, p0, Lcom/airbnb/lottie/h$f;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/airbnb/lottie/h$f;->c:Lcom/airbnb/lottie/value/j;

    invoke-virtual {p1, v0, v1, v2}, Lcom/airbnb/lottie/h;->e(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    return-void
.end method
