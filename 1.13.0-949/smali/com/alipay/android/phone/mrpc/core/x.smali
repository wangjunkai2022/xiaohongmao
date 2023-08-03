.class public abstract Lcom/alipay/android/phone/mrpc/core/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field protected b:Lcom/alipay/android/phone/mrpc/core/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/mrpc/core/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->b:Lcom/alipay/android/phone/mrpc/core/d;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/x;->a:Z

    return v0
.end method
