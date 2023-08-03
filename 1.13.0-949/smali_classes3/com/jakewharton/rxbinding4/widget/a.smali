.class public final Lcom/jakewharton/rxbinding4/widget/a;
.super Ljava/lang/Object;
.source "AbsListViewScrollEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J;\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001aR\u0017\u0010\u000c\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0018\u001a\u0004\u0008\u001c\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0018\u001a\u0004\u0008\u001d\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/a;",
        "",
        "Landroid/widget/AbsListView;",
        "a",
        "",
        "b",
        "c",
        "d",
        "e",
        "view",
        "scrollState",
        "firstVisibleItem",
        "visibleItemCount",
        "totalItemCount",
        "f",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Landroid/widget/AbsListView;",
        "k",
        "()Landroid/widget/AbsListView;",
        "I",
        "i",
        "()I",
        "h",
        "l",
        "j",
        "<init>",
        "(Landroid/widget/AbsListView;IIII)V",
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
.field private final a:Landroid/widget/AbsListView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;IIII)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    iput p3, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    iput p4, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    iput p5, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    return-void
.end method

.method public static synthetic g(Lcom/jakewharton/rxbinding4/widget/a;Landroid/widget/AbsListView;IIIIILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/a;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/jakewharton/rxbinding4/widget/a;->f(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding4/widget/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/widget/AbsListView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/a;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    iget p1, p1, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding4/widget/a;
    .locals 7
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v6, Lcom/jakewharton/rxbinding4/widget/a;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding4/widget/a;-><init>(Landroid/widget/AbsListView;IIII)V

    return-object v6
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    return v0
.end method

.method public final k()Landroid/widget/AbsListView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListViewScrollEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
