.class public Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;
.super Ljava/lang/Object;
.source "ItemsRange.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->a:I

    .line 4
    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->d()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->a:I

    return v0
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
