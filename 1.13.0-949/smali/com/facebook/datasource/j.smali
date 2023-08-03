.class public Lcom/facebook/datasource/j;
.super Lcom/facebook/datasource/a;
.source "SimpleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/datasource/a;-><init>()V

    return-void
.end method

.method public static y()Lcom/facebook/datasource/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/datasource/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/datasource/j;

    invoke-direct {v0}, Lcom/facebook/datasource/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public p(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Lcom/facebook/datasource/a;->p(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public s(F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/datasource/a;->s(F)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;ZLjava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "isLast",
            "extras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public z(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/facebook/datasource/a;->v(Ljava/lang/Object;ZLjava/util/Map;)Z

    move-result p1

    return p1
.end method
