.class public Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/b;
.source "ArrayWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/b;"
    }
.end annotation


# instance fields
.field private n:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/b;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;->n:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f(I)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;->n:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 2
    aget-object p1, v0, p1

    .line 3
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;->n:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public q([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/d;->n:[Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/time/adapter/a;->a()V

    return-void
.end method
