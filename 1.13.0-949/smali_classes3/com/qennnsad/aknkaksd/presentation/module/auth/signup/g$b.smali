.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;
.super Ljava/lang/Object;
.source "FinishSignUpFragmentArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;->a(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g;-><init>(Ljava/util/HashMap;Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$a;)V

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;->a:Ljava/util/HashMap;

    const-string v1, "isFromGuestLinking"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c(Z)Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/g$b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isFromGuestLinking"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
