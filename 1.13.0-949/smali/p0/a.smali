.class public Lp0/a;
.super Ljava/lang/Object;
.source "FLog.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field private static g:Lp0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lp0/b;->q()Lp0/b;

    move-result-object v0

    sput-object v0, Lp0/a;->g:Lp0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static C(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static D(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static E(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static G(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs H(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs I(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs P(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs Q(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static R(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0}, Lp0/c;->m(I)Z

    move-result p0

    return p0
.end method

.method public static S(Lp0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lp0/a;->g:Lp0/c;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static T(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0}, Lp0/c;->n(I)V

    return-void
.end method

.method public static U(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    aput-object p4, v1, v0

    .line 2
    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp0/a;->U(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static Y(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    invoke-static {p1, v2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static Z(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs a0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs b0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p2, 0x2

    aput-object p4, v2, p2

    aput-object p5, v2, v1

    invoke-static {p1, v2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    invoke-static {p1, v2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    invoke-static {p1, v2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs h(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs i0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs j0(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static k0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    invoke-static {p1, v1}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "arg1",
            "arg2",
            "arg3",
            "arg4"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p2, 0x2

    aput-object p4, v2, p2

    aput-object p5, v2, v1

    invoke-static {p1, v2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs m0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lp0/a;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lp0/a;->l0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lp0/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs p(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lp0/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static p0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static q(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs q0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs r0(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs s(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static s0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lp0/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs t(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static t0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "tr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs u0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs v0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cls",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p0}, Lp0/a;->A(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1}, Lp0/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs x(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "tr"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0, p0, p1, p2}, Lp0/c;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static varargs y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs y0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p1, p2}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lp0/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static z()I
    .locals 1

    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-interface {v0}, Lp0/c;->b()I

    move-result v0

    return v0
.end method

.method public static varargs z0(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "tr",
            "msg",
            "args"
        }
    .end annotation

    .line 1
    sget-object v0, Lp0/a;->g:Lp0/c;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lp0/c;->m(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lp0/a;->g:Lp0/c;

    invoke-static {p2, p3}, Lp0/a;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p2, p1}, Lp0/c;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
