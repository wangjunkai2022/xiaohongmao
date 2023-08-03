.class public final synthetic Lcom/qennnsad/aknkaksd/domain/usecase/other_user/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/a;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;->d(Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
