.class public final Lcom/jakewharton/rxbinding4/view/q0;
.super Ljava/lang/Object;
.source "ViewLayoutChangeEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0086\u0008\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0010\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0004\u0008*\u0010+J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0004H\u00c6\u0003Jc\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u000e\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010 \u001a\u0004\u0008!\u0010\"R\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010 \u001a\u0004\u0008#\u0010\"R\u0017\u0010\u0010\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010 \u001a\u0004\u0008$\u0010\"R\u0017\u0010\u0011\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010 \u001a\u0004\u0008%\u0010\"R\u0017\u0010\u0012\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010 \u001a\u0004\u0008&\u0010\"R\u0017\u0010\u0013\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010 \u001a\u0004\u0008\'\u0010\"R\u0017\u0010\u0014\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010 \u001a\u0004\u0008(\u0010\"R\u0017\u0010\u0015\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010 \u001a\u0004\u0008)\u0010\"\u00a8\u0006,"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/q0;",
        "",
        "Landroid/view/View;",
        "a",
        "",
        "b",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "view",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "j",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Landroid/view/View;",
        "t",
        "()Landroid/view/View;",
        "I",
        "m",
        "()I",
        "s",
        "r",
        "l",
        "o",
        "q",
        "p",
        "n",
        "<init>",
        "(Landroid/view/View;IIIIIIII)V",
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
.field private final a:Landroid/view/View;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    iput p3, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    iput p4, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    iput p5, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    iput p6, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    iput p7, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    iput p8, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    iput p9, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    return-void
.end method

.method public static synthetic k(Lcom/jakewharton/rxbinding4/view/q0;Landroid/view/View;IIIIIIIIILjava/lang/Object;)Lcom/jakewharton/rxbinding4/view/q0;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/jakewharton/rxbinding4/view/q0;->j(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding4/view/q0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/view/q0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/view/q0;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    iget p1, p1, Lcom/jakewharton/rxbinding4/view/q0;->i:I

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

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    return v0
.end method

.method public final j(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding4/view/q0;
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v10, Lcom/jakewharton/rxbinding4/view/q0;

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/jakewharton/rxbinding4/view/q0;-><init>(Landroid/view/View;IIIIIIII)V

    return-object v10
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    return v0
.end method

.method public final t()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/view/q0;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
