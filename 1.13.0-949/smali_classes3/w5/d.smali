.class public Lw5/d;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lw5/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw5/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Lw5/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    aput-object p1, v1, p0

    const-string p0, "[%s]: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lw5/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw5/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Lw5/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lw5/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw5/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object p1

    invoke-virtual {p1}, Lw5/c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Lw5/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
