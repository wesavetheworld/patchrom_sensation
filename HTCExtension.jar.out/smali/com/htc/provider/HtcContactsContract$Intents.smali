.class public final Lcom/htc/provider/HtcContactsContract$Intents;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcContactsContract$Intents$UI;,
        Lcom/htc/provider/HtcContactsContract$Intents$Update;
    }
.end annotation


# static fields
.field public static final ACTION_SEARCH_COMPANY_DIRECTORY:Ljava/lang/String; = "com.htc.intent.ACTION_SEARCH_COMPANY_DIRECTORY"

.field public static final ACTION_SEARCH_COMPANY_DIRECTORY_RESULT:Ljava/lang/String; = "com.htc.intent.ACTION_SEARCH_COMPANY_DIRECTORY_RESULT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInsertNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "number"

    .prologue
    .line 747
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 748
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 751
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    return-object v0
.end method

.method public static createUpdateNumberIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "number"

    .prologue
    .line 762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    return-object v0
.end method