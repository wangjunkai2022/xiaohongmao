.class public final Lcom/alipay/android/phone/mrpc/core/l;
.super Lcom/alipay/android/phone/mrpc/core/a0;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/a0;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/mrpc/core/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/b;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/b0;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/m;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/mrpc/core/m;-><init>(Lcom/alipay/android/phone/mrpc/core/l;Lcom/alipay/android/phone/mrpc/core/b;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/b0;-><init>(Lcom/alipay/android/phone/mrpc/core/k;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
