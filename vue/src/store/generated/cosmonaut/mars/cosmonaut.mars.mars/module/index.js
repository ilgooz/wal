// THIS FILE IS GENERATED AUTOMATICALLY. DO NOT MODIFY.
import { SigningStargateClient } from "@cosmjs/stargate";
import { Registry } from "@cosmjs/proto-signing";
import { Api } from "./rest";
import { MsgDeletePost } from "./types/mars/tx";
import { MsgCreatePost } from "./types/mars/tx";
import { MsgUpdatePost } from "./types/mars/tx";
const types = [
    ["/cosmonaut.mars.mars.MsgDeletePost", MsgDeletePost],
    ["/cosmonaut.mars.mars.MsgCreatePost", MsgCreatePost],
    ["/cosmonaut.mars.mars.MsgUpdatePost", MsgUpdatePost],
];
export const MissingWalletError = new Error("wallet is required");
const registry = new Registry(types);
const defaultFee = {
    amount: [],
    gas: "200000",
};
const txClient = async (wallet, { addr: addr } = { addr: "http://localhost:26657" }) => {
    if (!wallet)
        throw MissingWalletError;
    const client = await SigningStargateClient.connectWithSigner(addr, wallet, { registry });
    const { address } = (await wallet.getAccounts())[0];
    return {
        signAndBroadcast: (msgs, { fee, memo } = { fee: defaultFee, memo: "" }) => client.signAndBroadcast(address, msgs, fee, memo),
        msgDeletePost: (data) => ({ typeUrl: "/cosmonaut.mars.mars.MsgDeletePost", value: data }),
        msgCreatePost: (data) => ({ typeUrl: "/cosmonaut.mars.mars.MsgCreatePost", value: data }),
        msgUpdatePost: (data) => ({ typeUrl: "/cosmonaut.mars.mars.MsgUpdatePost", value: data }),
    };
};
const queryClient = async ({ addr: addr } = { addr: "http://localhost:1317" }) => {
    return new Api({ baseUrl: addr });
};
export { txClient, queryClient, };
