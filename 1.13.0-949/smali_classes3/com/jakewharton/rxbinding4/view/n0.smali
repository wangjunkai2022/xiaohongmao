.class public final Lcom/jakewharton/rxbinding4/view/n0;
.super Lcom/jakewharton/rxbinding4/view/k0;
.source "ViewGroupHierarchyChangeEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\n\u001a\u00020\tH\u00d6\u0001J\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00d6\u0003R\u001a\u0010\u0006\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/n0;",
        "Lcom/jakewharton/rxbinding4/view/k0;",
        "Landroid/view/ViewGroup;",
        "c",
        "Landroid/view/View;",
        "d",
        "view",
        "child",
        "e",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "a",
        "Landroid/view/ViewGroup;",
        "b",
        "()Landroid/view/ViewGroup;",
        "Landroid/view/View;",
        "()Landroid/view/View;",
        "<init>",
        "(Landroid/view/ViewGroup;Landroid/view/View;)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/view/k0;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/n0;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/view/n0;->b:Landroid/view/View;

    return-void
.end method

.method public static synthetic f(Lcom/jakewharton/rxbinding4/view/n0;Landroid/view/ViewGroup;Landroid/view/View;ILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/n0;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/jakewharton/rxbinding4/view/n0;->e(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding4/view/n0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/n0;->b:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/n0;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final c()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding4/view/n0;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/view/n0;

    invoke-direct {v0, p1, p2}, Lcom/jakewharton/rxbinding4/view/n0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/n0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/view/n0;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewGroupHierarchyChildViewRemoveEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->b()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/view/n0;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
