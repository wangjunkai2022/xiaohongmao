.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/o;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->a:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->a:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;->c:Ljava/lang/String;

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->h(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
