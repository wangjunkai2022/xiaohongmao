.class public final synthetic Landroidx/sqlite/db/a;
.super Ljava/lang/Object;
.source "SupportSQLiteDatabase.java"


# direct methods
.method public static a(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "ArrayReturn"
            }
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static b(Landroidx/sqlite/db/SupportSQLiteDatabase;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
