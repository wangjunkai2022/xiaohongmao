.class public final Lcom/jakewharton/rxbinding4/widget/d;
.super Ljava/lang/Object;
.source "AdapterViewItemClickEventObservable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u00c6\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J7\u0010\u000e\u001a\u00020\u00002\u000c\u0008\u0002\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u00c6\u0001J\t\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0006H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001b\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u000c\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/d;",
        "",
        "Landroid/widget/AdapterView;",
        "a",
        "Landroid/view/View;",
        "b",
        "",
        "c",
        "",
        "d",
        "view",
        "clickedView",
        "position",
        "id",
        "e",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "Landroid/widget/AdapterView;",
        "j",
        "()Landroid/widget/AdapterView;",
        "Landroid/view/View;",
        "g",
        "()Landroid/view/View;",
        "I",
        "i",
        "()I",
        "J",
        "h",
        "()J",
        "<init>",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
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
.field private final a:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/view/View;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:I

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    iput p3, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    iput-wide p4, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    return-void
.end method

.method public static synthetic f(Lcom/jakewharton/rxbinding4/widget/d;Landroid/widget/AdapterView;Landroid/view/View;IJILjava/lang/Object;)Lcom/jakewharton/rxbinding4/widget/d;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/jakewharton/rxbinding4/widget/d;->e(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding4/widget/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public final b()Landroid/view/View;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    return v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    return-wide v0
.end method

.method public final e(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding4/widget/d;
    .locals 7
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)",
            "Lcom/jakewharton/rxbinding4/widget/d;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v6, Lcom/jakewharton/rxbinding4/widget/d;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding4/widget/d;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/jakewharton/rxbinding4/widget/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding4/widget/d;

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    iget-object v1, p1, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    iget v1, p1, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    iget-wide v2, p1, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g()Landroid/view/View;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    return-object v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    return v0
.end method

.method public final j()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterViewItemClickEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->a:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jakewharton/rxbinding4/widget/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
