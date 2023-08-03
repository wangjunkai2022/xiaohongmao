.class public final Lcom/opensource/svgaplayer/drawer/a$a;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u0006\"\u0004\u0008\u000c\u0010\u0008R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0012R$\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/a$a;",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "f",
        "()Ljava/lang/String;",
        "i",
        "(Ljava/lang/String;)V",
        "_matteKey",
        "b",
        "e",
        "h",
        "_imageKey",
        "c",
        "matteKey",
        "imageKey",
        "Lt4/g;",
        "()Lt4/g;",
        "frameEntity",
        "_frameEntity",
        "Lt4/g;",
        "d",
        "g",
        "(Lt4/g;)V",
        "<init>",
        "(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;)V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lt4/g;
    .annotation build Lm8/h;
    .end annotation
.end field

.field final synthetic d:Lcom/opensource/svgaplayer/drawer/a;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;)V
    .locals 0
    .param p1    # Lcom/opensource/svgaplayer/drawer/a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lt4/g;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/a$a;->d:Lcom/opensource/svgaplayer/drawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/drawer/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/opensource/svgaplayer/drawer/a$a;->c:Lt4/g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/drawer/a$a;-><init>(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;)V

    return-void
.end method


# virtual methods
.method public final a()Lt4/g;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->c:Lt4/g;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lt4/g;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->c:Lt4/g;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Lt4/g;)V
    .locals 0
    .param p1    # Lt4/g;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/a$a;->c:Lt4/g;

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/a$a;->a:Ljava/lang/String;

    return-void
.end method
