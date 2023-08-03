.class public Lcom/ksyun/media/player/KSYLibraryManager;
.super Ljava/lang/Object;
.source "KSYLibraryManager.java"


# static fields
.field private static mLocalLibraryPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalLibraryPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/KSYLibraryManager;->mLocalLibraryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static setLocalLibraryPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/ksyun/media/player/KSYLibraryManager;->mLocalLibraryPath:Ljava/lang/String;

    return-void
.end method
