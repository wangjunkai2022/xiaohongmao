.class public final Lcom/jakewharton/rxbinding4/widget/t;
.super Ljava/lang/Object;
.source "RatingBarRatingChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006H\u00c6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/t;",
        "",
        "Landroid/widget/RatingBar;",
        "a",
        "",
        "b",
        "",
        "c",
        "view",
        "rating",
        "fromUser",
        "d",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "equals",
        "Landroid/widget/RatingBar;",
        "h",
        "()Landroid/widget/RatingBar;",
        "F",
        "g",
        "()F",
        "Z",
        "f",
        "()Z",
        "<init>",
        "(Landroid/widget/RatingBar;FZ)V",
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
.field private final a:Landroid/widget/RatingBar;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:F

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/widget/RatingBar;FZ)V
    .locals 0
    .param p1    # Landroid/widget/RatingBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    iput p2, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    iput-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    return-void
.end method

.method public static synthetic e(Lcom/jakewharton/rxbinding4/widget/t;Landroid/widget/RatingBar;FZILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/t;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/t;->d(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding4/widget/t;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/widget/RatingBar;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    return v0
.end method

.method public final d(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding4/widget/t;
    .locals 1
    .param p1    # Landroid/widget/RatingBar;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/t;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/t;-><init>(Landroid/widget/RatingBar;FZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/t;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

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

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    return v0
.end method

.method public final h()Landroid/widget/RatingBar;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

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

    const-string v1, "RatingBarChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/t;->a:Landroid/widget/RatingBar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/t;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding4/widget/t;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
