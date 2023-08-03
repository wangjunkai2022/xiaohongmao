.class public final Lcom/im/freechat/data/g;
.super Ljava/lang/Object;
.source "LoginRepositoryImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\"\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0001\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0002\"\u0014\u0010\t\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0002\"\u0014\u0010\u000b\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0002\"\u0014\u0010\r\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0002\"\u0014\u0010\u000f\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0002\"\u0014\u0010\u0011\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0002\"\u0014\u0010\u0013\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0002\"\u0014\u0010\u0015\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0002\"\u0014\u0010\u0017\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0002\"\u0014\u0010\u0019\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0002\"\u0014\u0010\u001b\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0002\"\u0014\u0010\u001d\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0002\"\u0014\u0010\u001f\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0002\"\u0014\u0010!\u001a\u00020\u00008\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0002\u00a8\u0006\""
    }
    d2 = {
        "",
        "a",
        "Ljava/lang/String;",
        "PREF_DEVICE_UUID",
        "b",
        "PREF_USER_ID",
        "c",
        "PREF_NICKNAME",
        "d",
        "PREF_AVATAR",
        "e",
        "PREF_IM_TOKEN",
        "f",
        "PREF_TOKEN",
        "g",
        "PREF_PHONE_NUMBER",
        "h",
        "PREF_MANAGEMENT_ROLE",
        "i",
        "PREF_BIO",
        "j",
        "PREF_IS_MYSTERY",
        "k",
        "PREF_LAST_ONLINE",
        "l",
        "PREF_NOTIFICATIONS_ON",
        "m",
        "PREF_SOUND_ON",
        "n",
        "PREF_KEYBOARD_HEIGHT",
        "o",
        "PREF_LAST_SYNC_TIME",
        "p",
        "PREF_COUNTRY_CODE",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "deviceUUID"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "userID"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "nickname"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "avatar"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final e:Ljava/lang/String; = "imToken"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final f:Ljava/lang/String; = "token"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final g:Ljava/lang/String; = "phoneNumber"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final h:Ljava/lang/String; = "managementRole"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final i:Ljava/lang/String; = "bio"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final j:Ljava/lang/String; = "is_mystery"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final k:Ljava/lang/String; = "last_online"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final l:Ljava/lang/String; = "notificationsOn"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final m:Ljava/lang/String; = "soundOn"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final n:Ljava/lang/String; = "keyboardHeight"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final o:Ljava/lang/String; = "lastSyncTime"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final p:Ljava/lang/String; = "countryCode"
    .annotation build Lm8/g;
    .end annotation
.end field
