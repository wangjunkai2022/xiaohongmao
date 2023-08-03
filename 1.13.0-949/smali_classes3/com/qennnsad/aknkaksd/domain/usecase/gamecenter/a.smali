.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;->b:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/a;->b:Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;->c(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b;Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/b$a;Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
