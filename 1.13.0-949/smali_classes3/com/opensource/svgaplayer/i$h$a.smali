.class final Lcom/opensource/svgaplayer/i$h$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SVGAParser.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/i$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$1$1$1$1",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$1",
        "com/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1$$special$$inlined$let$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/l;

.field final synthetic b:Lcom/opensource/svgaplayer/i$h;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$h;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/i$h$a;->a:Lcom/opensource/svgaplayer/l;

    iput-object p2, p0, Lcom/opensource/svgaplayer/i$h$a;->b:Lcom/opensource/svgaplayer/i$h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/i$h$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lv4/c;->b:Lv4/c;

    const-string v1, "SVGAParser"

    const-string v2, "SVGAVideoEntity prepare success"

    invoke-virtual {v0, v1, v2}, Lv4/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/i$h$a;->b:Lcom/opensource/svgaplayer/i$h;

    iget-object v1, v0, Lcom/opensource/svgaplayer/i$h;->a:Lcom/opensource/svgaplayer/i;

    iget-object v2, p0, Lcom/opensource/svgaplayer/i$h$a;->a:Lcom/opensource/svgaplayer/l;

    iget-object v3, v0, Lcom/opensource/svgaplayer/i$h;->d:Lcom/opensource/svgaplayer/i$d;

    iget-object v0, v0, Lcom/opensource/svgaplayer/i$h;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/opensource/svgaplayer/i;->i(Lcom/opensource/svgaplayer/i;Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    return-void
.end method
