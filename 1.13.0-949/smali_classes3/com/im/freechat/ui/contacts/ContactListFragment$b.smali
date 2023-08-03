.class public final synthetic Lcom/im/freechat/ui/contacts/ContactListFragment$b;
.super Ljava/lang/Object;
.source "ContactListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/contacts/ContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/im/freechat/shared/entities/contact/ContactType;->values()[Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->NONE:Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sput-object v0, Lcom/im/freechat/ui/contacts/ContactListFragment$b;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;->values()[Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sput-object v0, Lcom/im/freechat/ui/contacts/ContactListFragment$b;->$EnumSwitchMapping$1:[I

    return-void
.end method
