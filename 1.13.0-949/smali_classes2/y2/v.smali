.class public final Ly2/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation build Lu2/a;
.end annotation

.annotation build Ly2/d0;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static d()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static e()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static f()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static g()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static h()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static i()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static j()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static k()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static l()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static m()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static n()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static o()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static p()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static q()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static r()Z
    .locals 5
    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ly2/v;->q()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x53

    if-lt v3, v4, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static s()Z
    .locals 4
    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-static {}, Ly2/v;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
