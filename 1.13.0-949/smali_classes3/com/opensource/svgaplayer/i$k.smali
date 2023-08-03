.class final Lcom/opensource/svgaplayer/i$k;
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
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0010\u0002\u001a\u00060\u0000j\u0002`\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "it",
        "",
        "a",
        "(Ljava/lang/Exception;)V"
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

.field final synthetic b:Ljava/net/URL;

.field final synthetic c:Lcom/opensource/svgaplayer/i$d;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/i;Ljava/net/URL;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/i$k;->a:Lcom/opensource/svgaplayer/i;

    iput-object p2, p0, Lcom/opensource/svgaplayer/i$k;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/opensource/svgaplayer/i$k;->c:Lcom/opensource/svgaplayer/i$d;

    iput-object p4, p0, Lcom/opensource/svgaplayer/i$k;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lv4/c;->b:Lv4/c;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ svga file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/opensource/svgaplayer/i$k;->b:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " download fail ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    .line 3
    invoke-virtual {v0, v2, v1}, Lv4/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/opensource/svgaplayer/i$k;->a:Lcom/opensource/svgaplayer/i;

    iget-object v1, p0, Lcom/opensource/svgaplayer/i$k;->c:Lcom/opensource/svgaplayer/i$d;

    iget-object v2, p0, Lcom/opensource/svgaplayer/i$k;->d:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/i;->j(Lcom/opensource/svgaplayer/i;Ljava/lang/Exception;Lcom/opensource/svgaplayer/i$d;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/i$k;->a(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
