.class public Lcom/clj/fastble/data/a;
.super Ljava/lang/Object;
.source "BleConnectStateParameter.java"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/clj/fastble/data/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/clj/fastble/data/a;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/clj/fastble/data/a;->b:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/clj/fastble/data/a;->b:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/clj/fastble/data/a;->a:I

    return-void
.end method
