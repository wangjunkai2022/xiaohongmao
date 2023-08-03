.class public final Lcom/im/freechat/base/a$a;
.super Ljava/lang/Object;
.source "BaseViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u0000*\u000e\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00010\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0008\u001a\u00028\u0001\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u0004\u001a\u00028\u0001H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J*\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00028\u00012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00d6\u0003R\u0017\u0010\u0008\u001a\u00028\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0005R\u0017\u0010\t\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/base/a$a;",
        "",
        "T",
        "",
        "a",
        "()Ljava/lang/Enum;",
        "Landroid/os/Bundle;",
        "b",
        "direction",
        "extras",
        "c",
        "(Ljava/lang/Enum;Landroid/os/Bundle;)Lcom/im/freechat/base/a$a;",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/lang/Enum;",
        "e",
        "Landroid/os/Bundle;",
        "f",
        "()Landroid/os/Bundle;",
        "<init>",
        "(Ljava/lang/Enum;Landroid/os/Bundle;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic d(Lcom/im/freechat/base/a$a;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/im/freechat/base/a$a;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/base/a$a;->c(Ljava/lang/Enum;Landroid/os/Bundle;)Lcom/im/freechat/base/a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    return-object v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public final c(Ljava/lang/Enum;Landroid/os/Bundle;)Lcom/im/freechat/base/a$a;
    .locals 1
    .param p1    # Ljava/lang/Enum;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/im/freechat/base/a$a<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/base/a$a;

    invoke-direct {v0, p1, p2}, Lcom/im/freechat/base/a$a;-><init>(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final e()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/base/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/base/a$a;

    iget-object v1, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    iget-object v3, p1, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Navigation(direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/base/a$a;->a:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/base/a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
