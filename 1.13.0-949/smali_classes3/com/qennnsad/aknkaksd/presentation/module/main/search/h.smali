.class public Lcom/qennnsad/aknkaksd/presentation/module/main/search/h;
.super Ljava/lang/Object;
.source "SearchUserFragmentDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/search/h$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/module/main/search/h$b;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/h$b;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/module/main/search/h$a;)V

    return-object v0
.end method
