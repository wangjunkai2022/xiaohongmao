.class public Lcom/opensource/svgaplayer/i$c;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J`\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000f2\u0006\u0010\u0003\u001a\u00020\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t0\u00042%\u0010\u000e\u001a!\u0012\u0017\u0012\u00150\u000bj\u0002`\u000c\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\t0\u0004H\u0016R\"\u0010\u0017\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/i$c;",
        "",
        "Ljava/net/URL;",
        "url",
        "Lkotlin/Function1;",
        "Ljava/io/InputStream;",
        "Lkotlin/ParameterName;",
        "name",
        "inputStream",
        "",
        "complete",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "failure",
        "Lkotlin/Function0;",
        "b",
        "",
        "a",
        "Z",
        "()Z",
        "c",
        "(Z)V",
        "noCache",
        "<init>",
        "()V",
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
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/opensource/svgaplayer/i$c;->a:Z

    return v0
.end method

.method public b(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;
    .locals 9
    .param p1    # Ljava/net/URL;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/io/InputStream;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    new-instance v6, Lcom/opensource/svgaplayer/i$c$b;

    invoke-direct {v6, v3}, Lcom/opensource/svgaplayer/i$c$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/i;->i:Lcom/opensource/svgaplayer/i$b;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/i$b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lcom/opensource/svgaplayer/i$c$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/opensource/svgaplayer/i$c$a;-><init>(Lcom/opensource/svgaplayer/i$c;Ljava/net/URL;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/opensource/svgaplayer/i$c;->a:Z

    return-void
.end method
