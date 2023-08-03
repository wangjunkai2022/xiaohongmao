.class final Lcom/opensource/svgaplayer/i$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SVGAParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/i;->z(Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/InputStream;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Ljava/io/InputStream;",
        "it",
        "",
        "a",
        "(Ljava/io/InputStream;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/opensource/svgaplayer/i$d;

.field final synthetic d:Lcom/opensource/svgaplayer/i$e;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/i;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;Lcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/i$j;->a:Lcom/opensource/svgaplayer/i;

    iput-object p2, p0, Lcom/opensource/svgaplayer/i$j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/i$j;->c:Lcom/opensource/svgaplayer/i$d;

    iput-object p4, p0, Lcom/opensource/svgaplayer/i$j;->d:Lcom/opensource/svgaplayer/i$e;

    iput-object p5, p0, Lcom/opensource/svgaplayer/i$j;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/i$j;->a:Lcom/opensource/svgaplayer/i;

    .line 2
    iget-object v2, p0, Lcom/opensource/svgaplayer/i$j;->b:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/opensource/svgaplayer/i$j;->c:Lcom/opensource/svgaplayer/i$d;

    .line 4
    iget-object v5, p0, Lcom/opensource/svgaplayer/i$j;->d:Lcom/opensource/svgaplayer/i$e;

    .line 5
    iget-object v6, p0, Lcom/opensource/svgaplayer/i$j;->e:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p1

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/opensource/svgaplayer/i;->v(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/i$d;ZLcom/opensource/svgaplayer/i$e;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/i$j;->a(Ljava/io/InputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
